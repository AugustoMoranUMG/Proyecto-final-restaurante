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
    public partial class FrmPagoOrdenes: Form
    {
        CDPagoOrdenes cd_pagoordenes = new CDPagoOrdenes();
        CLPagoOrdenes cl_pagoordenes = new CLPagoOrdenes();

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
            MtdMostrarListaOrdenEnc();
            lblFechaSistema.Text = DateTime.Now.ToString("dd/MM/yy hh:mm:ss tt");
        }

        //lga CBOX
        private void MtdMostrarListaOrdenEnc()
        {
            var Listaordenes = cd_pagoordenes.MtdListarOrdenEnc();

            foreach (var Ordenes in Listaordenes)
            {
                cboxOrdenEncabezado.Items.Add(Ordenes);
            }

            cboxOrdenEncabezado.DisplayMember = "Text";
            cboxOrdenEncabezado.ValueMember = "Value";

        }
         //lga LBL
        private void cboxOrdenEncabezado_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*double MontoTotalOrd = double.Parse((lblMontoOrden.Text.Trim()).ToString());*/


            var PagoSeleccionado = cboxOrdenEncabezado.SelectedItem;
            int CodigoOrdenEnc = (int)PagoSeleccionado.GetType().GetProperty("Value").GetValue(PagoSeleccionado, null);
            lblMontoOrden.Text = cd_pagoordenes.MtdConsultarPagoOrdenes(CodigoOrdenEnc);
            lblPropina.Text = cl_pagoordenes.MtdPropina(double.Parse(lblMontoOrden.Text)).ToString("c");
            lblImpuesto.Text = cl_pagoordenes.MtdImpuesto(double.Parse(lblMontoOrden.Text)).ToString("c");
            lblDescuento.Text = cl_pagoordenes.MtdDescuento(double.Parse(lblMontoOrden.Text)).ToString("c");
            lblTotalPago.Text = cl_pagoordenes.MtdTotalPago(double.Parse(lblMontoOrden.Text)).ToString("c");
        }

        private void lblMontoOrden_Click(object sender, EventArgs e)
        {
            
        }
    }
}
