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
    public partial class frmEncabezadoOrdenes: Form
    {
        CDencabezadoOrdenes cd_encabezadoOrdenes = new CDencabezadoOrdenes();
        CLencabezadoOrdenes cl_encabdezadoOrdenes = new CLencabezadoOrdenes();

        public frmEncabezadoOrdenes()
        {
            InitializeComponent();
        }

        private void MtdMostrarListaClientes()
        {
            var ListaClientes = cd_encabezadoOrdenes.MtdListarCliente();

            foreach (var Clientes in ListaClientes)
            {
                cboxCodigoCliente.Items.Add(Clientes);
            }

            cboxCodigoCliente.DisplayMember = "Text";
            cboxCodigoCliente.ValueMember = "Value";
        }

        private void MtdMostrarListaDetallesOrdenes()
        {
            var ListaDetallesOrdenes = cd_encabezadoOrdenes.MtdListarDetallesOrdenes();
            foreach (var DetallesOrdenes in ListaDetallesOrdenes)
            {
                cboxCodigoDetalleOrdenes.Items.Add(DetallesOrdenes);
            }
            cboxCodigoDetalleOrdenes.DisplayMember = "Text";
            cboxCodigoDetalleOrdenes.ValueMember = "Value";
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int CodigoCliente = int.Parse(cboxCodigoCliente.Text.Split('-')[0].Trim());
                //Valores temporales para codigomesa y codigoempleado mientras se crean los metodos correspondientes.
                int CodigoMesa = 1;
                int CodigoEmpleado = 1;
                DateTime FechaOrden = dtpFechaOrden.Value;
                decimal MontoTotalOrden = cd_encabezadoOrdenes.MtdConsultarEncabezadoOrdenes(int.Parse(txtCodigoOrdenEncabezado.Text));
                string Estado = cboxEstado.Text;
                string UsuarioSistema = txtUsuarioSistema.Text;
                DateTime FechaSistema = cl_encabdezadoOrdenes.MtdFechaActual();

                cd_encabezadoOrdenes.MtdAgregarEncabezadoOrdenes(CodigoCliente, CodigoMesa, CodigoEmpleado, FechaOrden, MontoTotalOrden, Estado, UsuarioSistema, FechaSistema);
                MessageBox.Show("Orden agregada", "Correcto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void frmEncabezadoOrdenes_Load(object sender, EventArgs e)
        {
            MtdMostrarListaClientes();
            MtdMostrarListaDetallesOrdenes();
        }
    }
}
