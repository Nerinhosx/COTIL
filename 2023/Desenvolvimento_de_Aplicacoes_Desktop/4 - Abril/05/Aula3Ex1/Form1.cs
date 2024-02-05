using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula3Ex1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
/*            if(textBox1.Text=="COTIL")
            {
                label1.Text = "Acertou!";
            }
            else
            {
                label1.Text="Errou!";
            } */

            switch(textBox1.Text)
            {
                case "COTIL":
                    label1.Text = "Acertou: COTIL";
                    break;
                case "UNICAMP":
                    label1.Text = "Acertou: UNICAMP";
                    break;
                default:
                    label1.Text = "Escreveu " + textBox1.Text;
                    break;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

    }
}
