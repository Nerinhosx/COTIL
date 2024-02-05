using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula7Exem1
{
    public partial class Form2 : Form
    {
        int op;
        public Form2()
        {
            InitializeComponent();
        }

        private void monthCalendar1_DateChanged(object sender, DateRangeEventArgs e)
        {
            textBox1.Text = monthCalendar1.SelectionRange.Start.ToLongDateString();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            op = 1;
            label1.BackColor = Color.Gray;
            label6.BackColor = Color.Gray;

            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label2_Click(object sender, EventArgs e)
        {
            op = 2;
            label2.BackColor = Color.Gray;
            label7.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label3_Click(object sender, EventArgs e)
        {
            op = 3;
            label3.BackColor = Color.Gray;
            label8.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label4_Click(object sender, EventArgs e)
        {
            op = 4;
            label4.BackColor = Color.Gray;
            label9.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label5_Click(object sender, EventArgs e)
        {
            op = 5;
            label5.BackColor = Color.Gray;
            label10.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
        }

        private void label6_Click(object sender, EventArgs e)
        {
            op = 6;
            label1.BackColor = Color.Gray;
            label6.BackColor = Color.Gray;

            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label7_Click(object sender, EventArgs e)
        {
            op = 7;
            label2.BackColor = Color.Gray;
            label7.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label8_Click(object sender, EventArgs e)
        {
            op = 8;
            label3.BackColor = Color.Gray;
            label8.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label9_Click(object sender, EventArgs e)
        {
            op = 9;
            label4.BackColor = Color.Gray;
            label9.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label5.BackColor = SystemColors.Control;
            label10.BackColor = SystemColors.Control;
        }

        private void label10_Click(object sender, EventArgs e)
        {
            op = 10;
            label5.BackColor = Color.Gray;
            label10.BackColor = Color.Gray;

            label1.BackColor = SystemColors.Control;
            label6.BackColor = SystemColors.Control;
            label2.BackColor = SystemColors.Control;
            label7.BackColor = SystemColors.Control;
            label3.BackColor = SystemColors.Control;
            label8.BackColor = SystemColors.Control;
            label4.BackColor = SystemColors.Control;
            label9.BackColor = SystemColors.Control;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(textBox1.Text != "")
            {
                if ((op == 6) || (op == 1))
                {
                    label6.Text = textBox2.Text;
                }
                else if ((op == 7) || (op == 2))
                {
                    label7.Text = textBox2.Text;
                }
                else if ((op == 8) || (op == 3))
                {
                    label8.Text = textBox2.Text;
                }
                else if ((op == 9) || (op == 4))
                {
                    label9.Text = textBox2.Text;
                }
                else if ((op == 10) || (op == 5))
                {
                    label10.Text = textBox2.Text;
                }
                else
                {
                    MessageBox.Show("Escolha um horário!", "Sistema informa:", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show("Informe seu nome!", "Sistema informa: ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string nome_arq = monthCalendar1.SelectionRange.Start.ToLongDateString();
            StreamWriter arquivo;

            if (System.IO.File.Exists("C:\\Users\\aluno\\Desktop\\" + nome_arq + ".txt"))
                File.Delete("C:\\Users\\aluno\\Desktop\\" + nome_arq + ".txt");
            arquivo = new StreamWriter("C:\\Users\\aluno\\Desktop\\" + nome_arq + ".txt");

            foreach(Label controle in tableLayoutPanel1.Controls)
            {
                arquivo.WriteLine(controle.Text);
            }
            arquivo.Close();

            MessageBox.Show("Arquivo gravado com sucesso!", "Sistema informa:", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            string nome_arq = monthCalendar1.SelectionRange.Start.ToLongDateString();

            if (System.IO.File.Exists("C:\\Users\\aluno\\Desktop\\" + nome_arq + ".txt"))
            {
                StreamReader arquivoE;
                arquivoE = new StreamReader("C:\\Users\\aluno\\Desktop\\" + nome_arq + ".txt");

                foreach (Label texto in tableLayoutPanel1.Controls)
                {
                    String linha = arquivoE.ReadLine();
                    texto.Text = linha;
                }
                arquivoE.Close();
            }
            else
            {
                /*   StreamReader arquivoNR = new StreamReader("C:\\Users\\aluno\\Desktop\\" + nome_arq + "default.txt");

                   foreach(Label texto in tableLayoutPanel1.Controls)
                   {
                       String linha = arquivoNR.ReadLine();
                       texto.Text = linha;
                   }

                   arquivoNR.Close();*/
                label6.Text = "Disponível";
                label7.Text = "Disponível";
                label8.Text = "Disponível";
                label9.Text = "Disponível";
                label10.Text = "Disponível";
                label1.BackColor = SystemColors.Control;
                label6.BackColor = SystemColors.Control;
                label2.BackColor = SystemColors.Control;
                label7.BackColor = SystemColors.Control;
                label3.BackColor = SystemColors.Control;
                label8.BackColor = SystemColors.Control;
                label4.BackColor = SystemColors.Control;
                label9.BackColor = SystemColors.Control;
                label5.BackColor = SystemColors.Control;
                label10.BackColor = SystemColors.Control;
            }
        }

        private void label6_DoubleClick(object sender, EventArgs e)
        {
            label6.Text = "Disponível";
        }

        private void label7_DoubleClick(object sender, EventArgs e)
        {
            label7.Text = "Disponível";
        }

        private void label8_DoubleClick(object sender, EventArgs e)
        {
            label8.Text = "Disponível";
        }

        private void label9_DoubleClick(object sender, EventArgs e)
        {
            label9.Text = "Disponível";
        }

        private void label10_DoubleClick(object sender, EventArgs e)
        {
            label10.Text = "Disponível";
        }
    }
}
