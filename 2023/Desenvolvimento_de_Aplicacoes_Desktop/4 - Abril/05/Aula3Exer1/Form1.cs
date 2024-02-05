using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula3Exer1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           int n = int.Parse(textBox1.Text);
            for(int i=0;i<=10;i++)
            {
                listBox1.Items.Add(n + "*" + i + "=" + n * i);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int n = int.Parse(textBox1.Text);
            int i = 0;
            while(i<=10)
            {
                listBox1.Items.Add(n + "*" + i + "=" + n * i);
                i++;
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int n = int.Parse(textBox1.Text);
            int i = 0;
            do
            {
                listBox1.Items.Add(n + "*" + i + "=" + n * i);
                i++;
            } while (i <= 10);
        }
    }
}
