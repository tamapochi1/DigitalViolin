using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.IO.Ports;
using System.Threading;

namespace TouchSensorTest
{
    /// <summary>
    /// シリアルポートでの通信を別スレッドで行います。
    /// </summary>
    public class SerialPortConnector
    {
        private SerialPort myPort = null;
        private Thread receiveThread = null;

        public string PortName { get; private set; }
        public int BaudRate { get; private set; }
        public Parity Parity { get; private set; }
        public int DataBits { get; private set; }
        public StopBits StopBits { get; private set; }
        public bool IsOpen { get; private set; }

        public delegate void DataReceivedHandler(byte[] data);
        public event DataReceivedHandler DataReceived;

        public SerialPortConnector(string portName, int baudRate, Parity parity, int dataBits, StopBits stopBits)
        {
            PortName = portName;
            BaudRate = baudRate;
            Parity = parity;
            DataBits = dataBits;
            StopBits = stopBits;
            IsOpen = false;
        }

        ~SerialPortConnector()
        {
            Close();
        }

        public static string[] GetPortsList()
        {
            return SerialPort.GetPortNames();
        }

        public void Start()
        {
            myPort = new SerialPort(PortName, BaudRate, Parity, DataBits, StopBits);
            myPort.ReadBufferSize = 114514;
            myPort.WriteBufferSize = 114514;

            try
            {
                myPort.Open();
                IsOpen = true;
                //MatApp.ApplicationLog.Log(new LogData(LogCondition.Action, "シリアルポート" + myPort.PortName + " を開きました", "", this));

                receiveThread = new Thread(ReceiveWork);
                receiveThread.Start(this);
            }
            catch (Exception ex)
            {
                //MatApp.ApplicationLog.LogException("シリアルポート" + PortName + " を開けませんでした", ex, this);
            }
        }

        public static void ReceiveWork(object target)
        {
            SerialPortConnector my = target as SerialPortConnector;
            my.ReceiveData();
        }

        public void WriteData(byte[] buffer)
        {
            if (!IsOpen) return;
            myPort.Write(buffer, 0, buffer.Length);
        }

        public void WriteData(string data)
        {
            if (!IsOpen) return;
            myPort.Write(data);
        }

        public void ReceiveData()
        {
            if (myPort == null)
            {
                return;
            }

            do
            {
                //try
                //{
                    int rbyte = myPort.BytesToRead;
                    byte[] buffer = new byte[rbyte];
                    int read = 0;

                    while (read < rbyte)
                    {
                        int length = myPort.Read(buffer, read, rbyte - read);
                        read += length;
                    }

                    if (rbyte > 0)
                    {
                        DataReceived?.Invoke(buffer);
                    }
                //}
                //catch (Exception ex)
                //{
                    //this.Dispatcher.BeginInvoke((Action)(() =>
                    //{
                    //    MatApp.ApplicationLog.LogException("シリアルポート" + PortName + " でのデータ受信に失敗しました", ex, this);
                    //}));
                //}
            } while (myPort.IsOpen);
        }

        public void Close()
        {
            if (receiveThread != null && myPort != null)
            {
                myPort.Close();

                IsOpen = false;
                //this.Dispatcher.BeginInvoke((Action)(() =>
                //{
                //    MatApp.ApplicationLog.Log(new LogData(LogCondition.Action, "シリアルポート" + PortName + " を閉じました", "", this));
                //}));

                receiveThread.Join();
            }
        }
    }
}
