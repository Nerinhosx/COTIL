using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula3Exer3
{
    public partial class Form1 : Form
    {
        int op = 0;
        double r = 0, n1 = 0;

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "1";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "2";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "3";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "4";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "5";
        }

        private void button6_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "6";
        }

        private void button7_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "7";
        }

        private void button8_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "8";
        }

        private void button9_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "9";
        }

        private void button10_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + "0";
        }

        private void button11_Click(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(textBox1.Text))
            {

            }
            else
            {
                if (!(textBox1.Text.Contains(",")))
                    textBox1.Text = textBox1.Text + ",";
            }
        }

        private void button12_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text.Remove(textBox1.TextLength - 1);
        }

        private void button14_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(textBox1.Text))
            {

            }
            else
            {
                op = 1;
                n1 = double.Parse(textBox1.Text);
                textBox1.Clear();
            }
        }

        private void button15_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(textBox1.Text))
            {

            }
            else
            {
                op = 2;
                n1 = double.Parse(textBox1.Text);
                textBox1.Clear();
            }
        }

        private void button16_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(textBox1.Text))
            {

            }
            else
            {
                op = 3;
                n1 = double.Parse(textBox1.Text);
                textBox1.Clear();
            }
        }

        private void button17_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(textBox1.Text))
            {

            }
            else
            {
                op = 4;
                n1 = double.Parse(textBox1.Text);
                textBox1.Clear();
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button18_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(textBox1.Text))
            {

            }
            else
            {
                switch (op)
                {
                    case 1:
                        r = n1 + double.Parse(textBox1.Text);
                        op = -1;
                        break;
                    case 2:
                        r = n1 - double.Parse(textBox1.Text);
                        op = -1;
                        break;
                    case 3:
                        r = n1 * double.Parse(textBox1.Text);
                        op = -1;
                        break;
                    case 4:
                        if (double.Parse(textBox1.Text) > 0)
                        {
                            r = n1 / double.Parse(textBox1.Text);
                            op = -1;
                        }
                        break;
                }
                textBox1.Text = r.ToString();
                r = 0;
            }
        }
    }
}
