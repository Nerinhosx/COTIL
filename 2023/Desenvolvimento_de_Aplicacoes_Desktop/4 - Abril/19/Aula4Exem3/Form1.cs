using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula4Exem3
{
    public partial class Form1 : Form
    {
        int i1=0, i2=0, i3=0, i4=0, i5=0, i6=0;


        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String curso="";
            short serie = 0;

            if (radioButton1.Checked)
            {
                curso = "Desenvolvimento de Sistemas";
            }
            else if(radioButton2.Checked)
            {
                curso = "Edificações";
            }
            else if(radioButton3.Checked)
            {
                curso = "Geodésia e Cartografia";
            }

            if(radioButton4.Checked)
            {
                serie = 1;
            }
            if (radioButton5.Checked)
            {
                serie = 2;
            }
            if (radioButton6.Checked)
            {
                serie = 3;
            }

            if (!(String.IsNullOrEmpty(curso)) && (serie != 0))
            {
                label1.Text = "O aluno faz o curso " + curso + " e está na " + serie + " série";
            }
            else
                MessageBox.Show("Escolha um curso e uma série", "Sistema informa", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            /*if(i1 == 1)
            {
                radioButton1.Checked = false;
            }
            else if(i2 == 1)
            {
                radioButton2.Checked = false;
            }
            else if (i3 == 1)
            {
                radioButton3.Checked = false;
            }
            if (i4 == 1)
            {
                radioButton4.Checked = false;
            }
            else if (i5 == 1)
            {
                radioButton5.Checked = false;
            }
            else if (i6 == 1)
            {
                radioButton6.Checked = false;
            }
            label1.Text = "";*/
            foreach(RadioButton radio in groupBox1.Controls)
            {
                radio.Checked = false;
            }
            foreach(RadioButton radio in groupBox2.Controls)
            {
                radio.Checked = false;
            }
        }
        private void radioButton1_Click(object sender, EventArgs e)
        {
            i1 = 1;
            i2 = 0;
            i3 = 0;
        }
        private void radioButton2_Click(object sender, EventArgs e)
        {
            i2 = 1;
            i1 = 0;
            i3 = 0;
        }
        private void radioButton3_Click(object sender, EventArgs e)
        {
            i3 = 1;
            i1 = 0;
            i2 = 0;
        }

        private void radioButton4_Click(object sender, EventArgs e)
        {
            i4 = 1;
            i5 = 0;
            i6 = 0;
        }

        private void radioButton5_Click(object sender, EventArgs e)
        {
            i5 = 1;
            i4 = 0;
            i6 = 0;
        }

        private void radioButton6_Click(object sender, EventArgs e)
        {
            i6 = 1;
            i4 = 0;
            i5 = 0;
        }
    }
}
