using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TouchSensorTest
{
    /// <summary>
    /// このカスタム コントロールを XAML ファイルで使用するには、手順 1a または 1b の後、手順 2 に従います。
    ///
    /// 手順 1a) 現在のプロジェクトに存在する XAML ファイルでこのカスタム コントロールを使用する場合
    /// この XmlNamespace 属性を使用場所であるマークアップ ファイルのルート要素に
    /// 追加します:
    ///
    ///     xmlns:MyNamespace="clr-namespace:TouchSensorTest"
    ///
    ///
    /// 手順 1b) 異なるプロジェクトに存在する XAML ファイルでこのカスタム コントロールを使用する場合
    /// この XmlNamespace 属性を使用場所であるマークアップ ファイルのルート要素に
    /// 追加します:
    ///
    ///     xmlns:MyNamespace="clr-namespace:TouchSensorTest;assembly=TouchSensorTest"
    ///
    /// また、XAML ファイルのあるプロジェクトからこのプロジェクトへのプロジェクト参照を追加し、
    /// リビルドして、コンパイル エラーを防ぐ必要があります:
    ///
    ///     ソリューション エクスプローラーで対象のプロジェクトを右クリックし、
    ///     [参照の追加] の [プロジェクト] を選択してから、このプロジェクトを参照し、選択します。
    ///
    ///
    /// 手順 2)
    /// コントロールを XAML ファイルで使用します。
    ///
    ///     <MyNamespace:ValueElement/>
    ///
    /// </summary>
    public class ValueElement : Control
    {
        static ValueElement()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(ValueElement), new FrameworkPropertyMetadata(typeof(ValueElement)));
        }

        private TextBlock valueTextBlock;

        public int _Value;
        public int Value
        {
            get
            {
                return _Value;
            }
            set
            {
                _Value = value;
                if (valueTextBlock != null)
                {
                    valueTextBlock.Text = _Value.ToString();
                }
            }
        }

        public int _ColorValue;
        public int ColorValue
        {
            get
            {
                return _ColorValue;
            }
            set
            {
                _ColorValue = value;
                Color calcColor;
                if(_ColorValue > 0)
                {
                    calcColor = Color.FromRgb(255, (byte)(255 - _ColorValue), (byte)(255 - _ColorValue));
                }
                else
                {
                    calcColor = Color.FromRgb((byte)(255 + _ColorValue), (byte)(255 + _ColorValue), 255);
                }
                Background = new SolidColorBrush(calcColor);
            }
        }

        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();

            valueTextBlock = (TextBlock)GetTemplateChild("ValueTextBlock");
            Value = _Value;
            ColorValue = _ColorValue;
        }
    }
}
