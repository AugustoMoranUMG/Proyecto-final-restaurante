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
            MtdMostrarListaMenus();
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
            lblCategoria.Text = cd_inventarios.MtdConsultarCategoria(int.Parse(cboxCodigoMenu.Text.Split('-')[0].Trim()));
        }
    }
}
