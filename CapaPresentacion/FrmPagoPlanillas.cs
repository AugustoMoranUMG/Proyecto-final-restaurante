using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDatos;
using CapaLogica;

namespace Sistema_Restaurante
{
    public partial class FrmPagoPlanillas: Form
    {
        CDPagoPlanillas cd_pagoplanillas = new CDPagoPlanillas();
        CLPagoPlanillas cl_pagoplanillas = new CLPagoPlanillas();
        public FrmPagoPlanillas()
        {
            InitializeComponent();
        }
        //primer paso CBOX
        private void MtdMostrarListaEmpleados()
        {
            var ListaMenus = cd_pagoplanillas.MtdListarEmpleados();

            foreach (var Menus in ListaMenus)
            {
                cboxCodigoEmpleado.Items.Add(Menus);
            }

            cboxCodigoEmpleado.DisplayMember = "Text";
            cboxCodigoEmpleado.ValueMember = "Value";

        }

        
        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FrmPagoPlanillas_Load(object sender, EventArgs e)
        {
            MtdMostrarListaEmpleados();
            lblFechaSistema.Text = DateTime.Now.ToString("dd/MM/yy hh:mm:ss tt");
        }

        private void cboxCodigoEmpleado_SelectedIndexChanged(object sender, EventArgs e)
        {
            var EmpleadoSeleccionado = cboxCodigoEmpleado.SelectedItem;
            int CodigoEmpleado = (int)EmpleadoSeleccionado.GetType().GetProperty("Value").GetValue(EmpleadoSeleccionado, null);
            lblSalario.Text = cd_pagoplanillas.MtdConsultarEmpleado(CodigoEmpleado);
            lblBono.Text = cl_pagoplanillas.MtdBono(double.Parse(lblSalario.Text)).ToString("c");
 
        }

        private void txtHorasExtras_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txtHorasExtras.Text))
                {
                    throw new Exception("El campo no debe de estar vacío");
                }

                double salario = double.Parse(lblSalario.Text);
                double horasExtras = double.Parse(txtHorasExtras.Text);

                lblMontoTotal.Text = cl_pagoplanillas.MtdMontoTotalSalario(salario, horasExtras).ToString("C");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void lblSalario_Click(object sender, EventArgs e)
        {

        }
    }
}
