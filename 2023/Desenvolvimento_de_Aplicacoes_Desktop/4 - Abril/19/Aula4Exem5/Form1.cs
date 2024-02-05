using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula4Exem5
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            byte a = 0;

            for (int i = 0; i <= 100; i += 25)
                progressBar1.Value = i;

            foreach(string lista in listBox1.Items)
            {
                if(lista==comboBox1.Text)
                {
                    a = 1;
                    break;
                }
            }
            if (a == 0)
                listBox1.Items.Add(comboBox1.Text);
        }

        private void listBox1_DoubleClick(object sender, EventArgs e)
        {
            listBox1.Items.RemoveAt(listBox1.SelectedIndex);
        }
    }
}
