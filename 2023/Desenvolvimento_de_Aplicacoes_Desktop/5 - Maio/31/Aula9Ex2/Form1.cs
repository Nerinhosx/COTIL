using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aula9Ex2
{
    public partial class Form1 : Form
    {
        int tempo=0;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Activated(object sender, EventArgs e)
        {
            timer1.Start();
            panel1.BackColor = Color.Red;
            panel2.BackColor = Color.Black;
            panel3.BackColor = Color.Black;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            tempo++;
            if (tempo<=10)
            {
                panel1.BackColor = Color.Red;
                panel2.BackColor = Color.Black;
                panel3.BackColor = Color.Black;
            }
            else if ((tempo > 10) & (tempo<=15))
            {
                panel1.BackColor = Color.Black;
                panel2.BackColor = Color.Black;
                panel3.BackColor = Color.Green;
            }
            else if ((tempo >= 15) & (tempo <= 17))
            {
                panel1.BackColor = Color.Black;
                panel2.BackColor = Color.Yellow;
                panel3.BackColor = Color.Black;
            }
            else
            {
                tempo = 0;
            }
        }
    }
}
