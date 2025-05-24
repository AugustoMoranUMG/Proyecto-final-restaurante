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
        CLInventarios cl_inventarios = new CLInventarios();

        public FrmInventarios()
        {
            InitializeComponent();
        }

        private void FrmInventarios_Load(object sender, EventArgs e)
        {
            MtdMostrarListaMenus();
            lblFechaSistema.Text = DateTime.Now.ToString("dd/MM/yy hh:mm:ss tt");
        }

        //primer paso CBOX
        private void MtdMostrarListaMenus()
        {
            var ListaMenus = cd_inventarios.MtdListarMenus();

            foreach (var Menus in ListaMenus)
            {
                cboxCodigoMenu.Items.Add(Menus);
            }

            cboxCodigoMenu.DisplayMember = "Text";
            cboxCodigoMenu.ValueMember = "Value";
            
        }

        
        private void txtCodigoMenu_TextChanged(object sender, EventArgs e)
        {
            
        }

        //primer paso LBL
        private void cboxCodigoMenu_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*lblCategoria.Text = cd_inventarios.MtdConsultarCategoria(int.Parse(cboxCodigoMenu.Text.Split('-')[0].Trim()));*/

            /*
            var MenuSeleccionado = (dynamic)cboxCodigoMenu.SelectedItem;
            int CodigoMenu = (int)MenuSeleccionado.Value;
            lblCategoria.Text = cd_inventarios.MtdConsultarCategoria(CodigoMenu);
            */

            var MenuSeleccionado = cboxCodigoMenu.SelectedItem;
            int CodigoMenu = (int)MenuSeleccionado.GetType().GetProperty("Value").GetValue(MenuSeleccionado, null);
            lblCategoria.Text = cd_inventarios.MtdConsultarCategoria(CodigoMenu);
        }

        
        private void ActualizacionDiasVigencia()
        {
            try
            {
                DateTime fechaEntrada = dtpFechaEntrada.Value.Date;
                DateTime fechaVencimiento = dtpFechaVencimiento.Value.Date;
     
                int dias = cl_inventarios.MtdDiasVigencia(fechaEntrada, fechaVencimiento);
                lblDiasVigencia.Text = $"{dias}";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void dtpFechaVencimiento_ValueChanged(object sender, EventArgs e)
        {
            ActualizacionDiasVigencia();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void lblCategoria_Click(object sender, EventArgs e)
        {

        }
    }
}
