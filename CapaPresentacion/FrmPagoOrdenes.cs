using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sistema_Restaurante
{
    public partial class FrmPagoOrdenes: Form
    {
        public FrmPagoOrdenes()
        {
            InitializeComponent();
        }

        private void dgvMenus_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FrmPagoOrdenes_Load(object sender, EventArgs e)
        {
            lblFechaSistema.Text = DateTime.Now.ToString("dd/MM/yy hh:mm:ss tt");
        }
    }
}
