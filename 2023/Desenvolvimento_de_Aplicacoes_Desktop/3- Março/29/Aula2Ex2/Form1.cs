using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula2Ex2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Campo obrigatório", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DialogResult bolinha = MessageBox.Show("Tem certeza que deseja sair?", "Sistema pergunta:", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(bolinha == DialogResult.Yes)
            {
                Close();
            }
            else
            {
                
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult bolinha = MessageBox.Show("Tem certeza que deseja apertar?", "Sistema pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(bolinha==DialogResult.Yes)
            {
                MessageBox.Show("Apertou SIM", "Resposta");
            }
            else
            {
                MessageBox.Show("Apertou NÃO");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Text = "VIsual Studio 2019";
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult a = MessageBox.Show("Tem certeza que deseja fechar o formulário?", "Sistema a:", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (a == DialogResult.No)
            {
                e.Cancel = true;
            }
        }
    }
}
