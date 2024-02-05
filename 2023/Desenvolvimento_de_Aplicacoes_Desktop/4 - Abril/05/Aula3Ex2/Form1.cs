using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula3Ex2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            for (int i=0;i<=10;i+=2)
            {
                listBox1.Items.Add(i);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int i = 10;
            while(i>=0)
            {
                listBox1.Items.Add(i);
                i --;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int i = 10;
            do
            {
                listBox1.Items.Add(i);
                i--;
            } while (i >= 0);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
        }
    }
}
