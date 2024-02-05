using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Estudio
{
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
            txtNome.Enabled = false;
            txtEnd.Enabled = false;
            txtNumero.Enabled = false;
            txtBairro.Enabled = false;
            txtComp.Enabled = false;
            txtCEP.Enabled = false;
            txtCidade.Enabled = false;
            txtEstado.Enabled = false;
            txtTel.Enabled = false;
            txtEmail.Enabled = false;
        }

        private void btnAtualizar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno(txtCPF.Text, txtNome.Text, txtEnd.Text, txtNumero.Text, txtBairro.Text, txtComp.Text, txtCEP.Text, txtCidade.Text, txtEstado.Text, txtTel.Text, txtEmail.Text)

        }

        private void txtCPF_KeyPress(object sender, KeyPressEventArgs e)
        {
            Aluno aluno = new Aluno(txtCPF.Text);
            if(e.KeyChar == 13)
            {
                if(aluno.consultarAluno())
                {
                    txtNome.Enabled = true;
                    txtEnd.Enabled = true;
                    txtNumero.Enabled = true;
                    txtBairro.Enabled = true;
                    txtComp.Enabled = true;
                    txtCEP.Enabled = true;
                    txtCidade.Enabled = true;
                    txtEstado.Enabled = true;
                    txtTel.Enabled = true;
                    txtEmail.Enabled = true;
                    txtCPF.Enabled = false;
                }
                else
                {
                    MessageBox.Show("Impossível atualizar: aluno não cadastrado.", "O sistema informa:", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
    }
}
