using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula9Ex1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(((Keys)e.KeyChar==Keys.Enter) && (textBox1.Text != ""))
            {
                maskedTextBox1.Focus();
                textBox1.BackColor = Color.Gainsboro;
                maskedTextBox1.BackColor = SystemColors.Window;
            }
        }

        private void maskedTextBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((Keys)e.KeyChar == Keys.Enter)
            {
                try
                {
                    Convert.ToDateTime(maskedTextBox1.Text);
                    listBox1.Items.Add(textBox1.Text);
                    listBox2.Items.Add(maskedTextBox1.Text);
                    maskedTextBox1.BackColor = Color.Gainsboro;
                    textBox1.Clear();
                    maskedTextBox1.Clear();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("A data informada é inexistente.", "O sistema informa:", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    maskedTextBox1.Focus();
                }
            }
        }

        private void textBox1_Click(object sender, EventArgs e)
        {
            textBox1.BackColor = SystemColors.Window;
            maskedTextBox1.BackColor = Color.Gainsboro;
        }

        private void maskedTextBox1_Click(object sender, EventArgs e)
        {
            maskedTextBox1.BackColor = SystemColors.Window;
            textBox1.BackColor = Color.Gainsboro;
        }

        private void listBox1_DoubleClick(object sender, EventArgs e)
        {
            try
            {
                listBox2.Items.RemoveAt(listBox1.SelectedIndex);
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Selecione um evento para excluí-lo.", "O sistema informa:", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        //Pra cima: primeiro tabPage. Pra baixo: segundo tabPage

        private void button1_Click(object sender, EventArgs e)
        {
            if (listBox3.SelectedIndex == 0)
            {
                textBox2.Text = (int.Parse(textBox2.Text) + 1).ToString();
            }
            else if (listBox3.SelectedIndex == 1)
            {
                textBox3.Text = (int.Parse(textBox3.Text) + 1).ToString();
            }
            else if (listBox3.SelectedIndex == 2)
            {
                textBox4.Text = (int.Parse(textBox4.Text) + 1).ToString();
            }
            else
            {
                MessageBox.Show("Burrão, selecione um candidato.", "O sistema informa:", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            listBox3.ClearSelected();
        }

        private void Form1_Click(object sender, EventArgs e)
        {
            textBox1.BackColor = Color.Gainsboro;
            maskedTextBox1.BackColor = Color.Gainsboro;
        }

        private void tabPage1_Click(object sender, EventArgs e)
        {
            textBox1.BackColor = Color.Gainsboro;
            maskedTextBox1.BackColor = Color.Gainsboro;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox2.Text = "0";
            textBox3.Text = "0";
            textBox4.Text = "0";
        }
    }
}
