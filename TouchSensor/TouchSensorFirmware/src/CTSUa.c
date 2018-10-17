/*
 * CTSUa.c
 *
 *  Created on: 2018/08/19
 *      Author: Reiji
 */

#include "CTSUa.h"
#include "Registers.h"
#include "r_cg_macrodriver.h"

uint16_t sensorDataBuffer[448];
uint32_t sensorDataBuffer_index = 0U;
void(*end)(void);

void CTSUa_Init(void(*callback_end)(void))
{
	uint32_t i;

	end = callback_end;

	// TSCAP端子を汎用ポート機能として活用し、Lowレベルを一定期間ドライブすることによって、TSCAP端子の外部に接続されているLPF容量を放電
	PORTC.PMR.BIT.B4 = 1U;
	PORTC.PDR.BIT.B4 = 1U;
	PORTC.PODR.BIT.B4 = 0U;
	for(i = 0; i < 240000U; i++){ }

	// モジュールストップ状態を解除
	R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_LPC_CGC_SWR);
	MSTP(CTSU) = 0U;
	R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_LPC_CGC_SWR);

	// CTSU電源設定
	CTSU.CTSUCR1.BIT.CTSUATUNE1 = 0U;	// 通常出力

	// CTSUベースクロック設定
	CTSU.CTSUCR1.BIT.CTSUCLK = 0x0U;	// PCLK/1

	// CTSU送信電源選択
	CTSU.CTSUCR0.BIT.CTSUTXVSEL = 0U;	// VCCを選択

	// TSCAP端子を設定
	R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_MPC);
	MPC.PC4PFS.BYTE = 0x19U;
	R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_MPC);
	PORTC.PMR.BIT.B4 = 1U;

	// CTSU電源オン
	CTSU.CTSUCR1.BYTE |= 0x03U;			// 電源ON, 容量スイッチON

	// 安定待ち
	for(i = 0; i < 240000U; i++){ }


	// 動作モード設定
	CTSU.CTSUCR1.BIT.CTSUMD = 0x03U;	// 相互容量フルスキャンモード

	// 同期ノイズ低減設定
	CTSU.CTSUSDPRS.BIT.CTSUPRRATIO = 0x03U;	// CTSU計測時間、計測パルス数調整ビット : x4
	CTSU.CTSUSDPRS.BIT.CTSUPRMODE = 0x02U;	// CTSU基本周期、基本パルス数 : 62パルス
	CTSU.CTSUSDPRS.BIT.CTSUSOFF = 0U;		// 高域ノイズ低減機能ON

	// センサ安定待ち時間設定
	CTSU.CTSUSST.BYTE = 0x10U;			// 固定値“00010000b”

	// 有効チャンネルを選択
	CTSU.CTSUCHAC0.BYTE = 0xFFU;		// TS0 ~ TS7  端子有効
	CTSU.CTSUCHAC1.BYTE = 0xFFU;		// TS8 ~ TS15  端子有効
	CTSU.CTSUCHAC2.BYTE = 0x7FU;		// TS16 ~ TS22  端子有効
	CTSU.CTSUCHAC3.BYTE = 0xF8U;		// TS27 ~ TS31  端子有効
	CTSU.CTSUCHAC4.BYTE = 0x0FU;		// TS32 ~ TS35  端子有効

	// 送受信チャンネル設定
	CTSU.CTSUCHTRC0.BYTE = 0x00U;		// TS0 ~ TS7 受信
	CTSU.CTSUCHTRC1.BYTE = 0x00U;		// TS8 ~ TS15 受信
	CTSU.CTSUCHTRC2.BYTE = 0x00U;		// TS16 ~ TS23 受信
	CTSU.CTSUCHTRC3.BYTE = 0x00U;		// TS24 ~ TS31 受信
	CTSU.CTSUCHTRC4.BYTE = 0x0FU;		// TS32 ~ TS35 送信

	IPR(CTSU,CTSUWR) = 0x0FU;
	IPR(CTSU,CTSURD) = 0x0FU;
	IPR(CTSU,CTSUFN) = 0x0FU;
	IEN(CTSU,CTSUWR) = 1U;
	IEN(CTSU,CTSURD) = 1U;
	IEN(CTSU,CTSUFN) = 1U;
}

void CTSUa_Measure(void)
{
	// 計測動作開始
	CTSU.CTSUCR0.BIT.CTSUSTRT = 1U;
}

// チャネル毎の設定レジスタ書き込み要求割り込み
#pragma interrupt CTSUa_CTSUWR(vect=VECT(CTSU,CTSUWR))
static void CTSUa_CTSUWR(void)
{
	// 高域ノイズ低減スペクトラム拡散制御設定
	CTSU.CTSUSSC.BIT.CTSUSSDIV = REG_CTSUSSDIV;

	// センサオフセット調整
	CTSU.CTSUSO0.BIT.CTSUSO = REG_CTSUSO;

	// 計測回数設定
	CTSU.CTSUSO0.BIT.CTSUSNUM = 0x0000U;

	// センサオフセットレジスタ1設定（CTSUSO1 レジスタへの書込み動作によりStatus3 へ遷移するため、1 度に全ビットに書き込む）
	// CTSUリファレンスICO電流 : 0
	// CTSUベースクロック : 動作クロックの2分周
	// CTSU ICOゲイン : ゲイン100%
	CTSU.CTSUSO1.WORD = 0x00FFU + (REG_CTSUSDPA << 8);
}

// 測定データ転送要求割り込み
#pragma interrupt CTSUa_CTSURD(vect=VECT(CTSU,CTSURD))
static void CTSUa_CTSURD(void)
{
	sensorDataBuffer[sensorDataBuffer_index] = CTSU.CTSUSC.WORD;
	sensorDataBuffer_index++;
	sensorDataBuffer[sensorDataBuffer_index] = CTSU.CTSURC.WORD;
	sensorDataBuffer_index++;
}

// 測定終了割り込み
#pragma interrupt CTSUa_CTSUFN(vect=VECT(CTSU,CTSUFN))
static void CTSUa_CTSUFN(void)
{
	sensorDataBuffer_index = 0U;

	if(*end != NULL)
	{
		end();
	}
}
