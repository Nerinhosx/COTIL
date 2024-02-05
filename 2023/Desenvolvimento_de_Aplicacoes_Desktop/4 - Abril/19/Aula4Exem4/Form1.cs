using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula4Exem4
{
    public partial class Form1 : Form
    {
        //int i=0;
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            /*
            if (i == 0)
            {
                Form2 form2 = new Form2();
                form2.Show();
                i++;
            }*/
            if (Application.OpenForms["Form2"] == null)
            {
                Form2 form2 = new Form2();
                form2.Show();
            }
        }

        private void nomeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            /*
            if (i == 0)
            {
                Form2 form2 = new Form2();
                form2.BackColor = Color.Yellow;
                form2.Show();
                i++;
            }*/
            if(Application.OpenForms["Form2"]==null)
            {
                Form2 form2 = new Form2();
                form2.BackColor = Color.Yellow;
                form2.Show();
            }
        }
    }
}
