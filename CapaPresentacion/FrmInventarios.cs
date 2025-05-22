using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDatos;
using CapaLogica;

namespace Sistema_Restaurante
{
    public partial class FrmInventarios: Form
    {
        CDInventarios cd_inventarios = new CDInventarios();
        public FrmInventarios()
        {
            InitializeComponent();
        }

        private void FrmInventarios_Load(object sender, EventArgs e)
        {
            
        }

        //primer paso
        private void txtCodigoMenu_TextChanged(object sender, EventArgs e)
        {
            lblCategoria.Text = cd_inventarios.MtdConsultarCategoria(txtCodigoMenu.Text);
        }
    }
}
