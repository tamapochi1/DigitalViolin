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

            ves = new ValueElement[112];
            averages = new double[112];

            for(int i = 0; i < 28; i++)
            {
                for(int j = 0; j < 4; j++)
                {
                    ValueElement ve = new ValueElement();
                    ve.Width = 50;
                    ve.Height = 50;
                    ve.HorizontalAlignment = HorizontalAlignment.Left;
                    ve.VerticalAlignment = VerticalAlignment.Top;
                    ve.Margin = new Thickness(50 * j, 50 * i, 0, 0);
                    ves[i * 4 + j] = ve;
                    ViewArea.Children.Add(ve);
                }
            }

            Closing += MainWindow_Closing;

            sp = new SerialPortConnector("COM10", 115200, System.IO.Ports.Parity.None, 8, System.IO.Ports.StopBits.One);
            sp.DataReceived += Sp_DataReceived;
            sp.Start();

            sp.WriteData("a");
        }

        ValueElement[] ves;
        double[] averages;
        int averageCount = 0;
        SerialPortConnector sp;
        Queue<byte> dataQueue = new Queue<byte>();

        private void Sp_DataReceived(byte[] data)
        {
            for(int i = 0; i < data.Length; i++)
            {
                dataQueue.Enqueue(data[i]);
            }

            if(dataQueue.Count > 224)
            {
                Dispatcher.Invoke(ValueUpdate);
            }
        }

        private void ValueUpdate()
        {
            while(dataQueue.Count >= 224)
            {
                for (int i = 0; i < 112; i++)
                {
                    byte byte1 = dataQueue.Dequeue();
                    byte byte2 = dataQueue.Dequeue();

                    ves[i].Value = (byte2 << 8) + byte1;
                    //ves[i].ColorValue = averages[i] > 0.0 ? (int)((ves[i].Value - averages[i]) * 1000.0 / averages[i]) : 0;
                    ves[i].ColorValue = (int)((ves[i].Value - averages[i]) / 5.0);

                    if (averageCount < 10)
                    {
                        averages[i] += ves[i].Value / 10.0;
                    }
                }

                if (averageCount < 10)
                {
                    averageCount++;
                }

                EstimateFingerPosition();
            }
        }

        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            sp.Close();
        }

        private void ResetButton_Click(object sender, RoutedEventArgs e)
        {
            dataQueue.Clear();
            for (int i = 0; i < 112; i++)
            {
                ves[i].Value = 0;
            }

            averageCount = 0;
            for (int i = 0; i < 112; i++)
            {
                averages[i] = 0.0;
            }
        }

        private void SetAverageButton_Click(object sender, RoutedEventArgs e)
        {
            averageCount = 0;
            for (int i = 0; i < 112; i++)
            {
                averages[i] = 0.0;
            }
        }

        private void CTSUSOTextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Enter)
            {
                int ctsuot = int.Parse(CTSUSOTextBox.Text);
                if(ctsuot > 0x3FF)
                {
                    ctsuot = 0x3FF;
                    CTSUSOTextBox.Text = ctsuot.ToString();
                }
                else if(ctsuot < 0)
                {
                    ctsuot = 0;
                    CTSUSOTextBox.Text = ctsuot.ToString();
                }

                SetCTSUSOT(ctsuot);
            }
        }

        private void SetCTSUSOT(int ctsuot)
        {
            byte[] sendData = new byte[3];
            sendData[0] = 0x02;
            sendData[1] = (byte)(ctsuot & 0x000000FF);
            sendData[2] = (byte)(ctsuot >> 8 & 0x000000FF);
            sp.WriteData(sendData);
        }

        private void CTSUSDPATextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                int ctsusdpa = int.Parse(CTSUSDPATextBox.Text);
                if (ctsusdpa > 0x1F)
                {
                    ctsusdpa = 0x1F;
                    CTSUSDPATextBox.Text = ctsusdpa.ToString();
                }
                else if (ctsusdpa < 0)
                {
                    ctsusdpa = 0;
                    CTSUSDPATextBox.Text = ctsusdpa.ToString();
                }

                SetCTSUSDPA(ctsusdpa);
            }
        }

        private void SetCTSUSDPA(int ctsusdpa)
        {
            byte[] sendData = new byte[3];
            sendData[0] = 0x03;
            sendData[1] = (byte)(ctsusdpa & 0x000000FF);
            sendData[2] = (byte)(ctsusdpa >> 8 & 0x000000FF);
            sp.WriteData(sendData);
        }

        private void EstimateFingerPosition()
        {
            double[] pos = new double[4];

            for(int indexString = 0; indexString < 4; indexString++)
            {
                for(int indexPos = 10; indexPos > 0; indexPos--)
                {
                    if(ves[indexString + indexPos * 4].ColorValue < -100)
                    {
                        double x1 = (indexPos + 1) * 50 + 25;
                        double x2 = (indexPos) * 50 + 25;
                        double x3 = (indexPos - 1) * 50 + 25;
                        double m1 = -ves[indexString + (indexPos + 1) * 4].ColorValue;
                        double m2 = -ves[indexString + (indexPos) * 4].ColorValue;
                        double m3 = -ves[indexString + (indexPos - 1) * 4].ColorValue;
                        if (m1 + m2 + m3 != 0.0)
                        {
                            pos[indexString] = (m1 * x1 + m2 * x2 + m3 * x3) / (m1 + m2 + m3);
                        }
                        else
                        {
                            pos[indexString] = 0.0;
                        }
                        break;
                    }
                }
            }

            FingerPos1.Margin = new Thickness(10, pos[0] - 15, 0, 0);
            FingerPos2.Margin = new Thickness(60, pos[1] - 15, 0, 0);
            FingerPos3.Margin = new Thickness(110, pos[2] - 15, 0, 0);
            FingerPos4.Margin = new Thickness(160, pos[3] - 15, 0, 0);
        }
    }
}
