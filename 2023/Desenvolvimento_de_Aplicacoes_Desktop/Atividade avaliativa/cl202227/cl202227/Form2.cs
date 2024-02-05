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

namespace cl202227
{
    public partial class Form2 : Form
    {
        int dec = 0;
        int opc1 = 0;
        int opc2 = 0;

        public Form2()
        {
            InitializeComponent();
        }

        private void monthCalendar1_DateSelected(object sender, DateRangeEventArgs e)
        {
            textBox1.Text = monthCalendar1.SelectionRange.Start.ToLongDateString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text == "")
            {
                MessageBox.Show("Um tipo de decoração deve ser selecionado.", "Sistema informa: ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else if (listBox1.SelectedIndex == -1)
            {
                MessageBox.Show("Uma decoração deve ser selecionada.", "Sistema informa: ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                if (checkBox1.Checked==true)
                {
                    opc1 = 80;
                }
                else
                {
                    opc1 = 0;
                }

                if (checkBox2.Checked == true)
                {
                    opc2 = 80;
                }
                else
                {
                    opc2 = 0;
                }

                if(comboBox1.Text == "Infantil")
                {
                    if (listBox1.SelectedIndex==0)
                    {
                        dec = 2000;
                    }
                    else if (listBox1.SelectedIndex==1)
                    {
                        dec = 3000;
                    }
                }
                else if (comboBox1.Text == "Adulto")
                {
                    if (listBox1.SelectedIndex == 0)
                    {
                        dec = 1500;
                    }
                    else if (listBox1.SelectedIndex == 1)
                    {
                        dec = 3000;
                    }
                }

                label2.Text = ((dec + opc1 + opc2).ToString() + ",00");
            }
        }

        private void comboBox1_TextChanged(object sender, EventArgs e)
        {
            if (comboBox1.Text == "Infantil")
            {
                listBox1.Items.Clear();
                listBox1.Items.Add("Safari - 2000,00");
                listBox1.Items.Add("LadyBug - 3000,00");
            }
            else if (comboBox1.Text == "Adulto")
            {
                listBox1.Items.Clear();
                listBox1.Items.Add("Disco - 1500,00");
                listBox1.Items.Add("40 anos - 3000,00");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                StreamWriter arquivo = new StreamWriter(textBox1.Text +".txt");

                if ((checkBox1.Checked == true) && (checkBox2.Checked == true))
                {
                    arquivo.WriteLine(textBox1.Text, comboBox1.Text, listBox1.SelectedItem, "Cento de brigadeiros", "Cento de beijinhos", label2.Text);
                }
                else if (checkBox1.Checked == true)
                {
                    arquivo.WriteLine(textBox1.Text, comboBox1.Text, listBox1.SelectedItem, "Cento de brigadeiros", label2.Text);
                }
                else if (checkBox2.Checked == true)
                {
                    arquivo.WriteLine(textBox1.Text, comboBox1.Text, listBox1.SelectedItem, "Cento de beijinhos", label2.Text);
                }
                arquivo.Close();
                MessageBox.Show("Arquivo Gravado com Sucesso!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro!");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            comboBox1.Text = "";
            listBox1.Items.Clear();
            textBox1.Text = "";
            checkBox1.Checked = false;
            checkBox2.Checked = false;
            label2.Text = "0000,00";
        }
    }
}
