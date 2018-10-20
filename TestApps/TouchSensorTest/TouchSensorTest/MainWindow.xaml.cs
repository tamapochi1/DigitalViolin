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
    /// MainWindow.xaml の相互作用ロジック
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            for(int i = 0; i < 28; i++)
            {
                for(int j = 0; j < 8; j++)
                {
                    ValueElement ve = new ValueElement();
                    ve.Width = 50;
                    ve.Height = 50;
                    ve.HorizontalAlignment = HorizontalAlignment.Left;
                    ve.VerticalAlignment = VerticalAlignment.Top;
                    ve.Margin = new Thickness(50 * j, 50 * i, 0, 0);
                    ve.ColorValue = -112 + i * 8 + j;
                    ves[i * 8 + j] = ve;
                    ViewArea.Children.Add(ve);
                }
            }

            sp.Start();
        }

        ValueElement[] ves = new ValueElement[224];
        SerialPortConnector sp = new SerialPortConnector("COM8", 115200, System.IO.Ports.Parity.None, 8, System.IO.Ports.StopBits.One);
    }
}
