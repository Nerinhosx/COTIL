using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula6Exem1
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            double calc;
            try
            {
                if (comboBox1.SelectedIndex == 0)
                {
                    calc = 21 * float.Parse(textBox1.Text);
                    label4.Text = calc.ToString("0.00");
                }
                else if (comboBox1.SelectedIndex == 1)
                {
                    calc = 30 * float.Parse(textBox1.Text);
                    label4.Text = calc.ToString("0.00");
                }
                else
                {
                    MessageBox.Show("Selecione um tipo de frasco.", "Atenção!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch
            {
                MessageBox.Show("Quantidade inválida informada.", "Atenção!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = -1;
            textBox1.Text = "";
            label4.Text = "0";
        }
    }
}
