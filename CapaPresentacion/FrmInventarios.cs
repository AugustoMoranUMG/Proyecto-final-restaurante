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
            MtdInsertarListaCategorias();
        }

        
        public void MtdInsertarListaCategorias()
        {
            var listacat = cd_inventarios.MtdListarCategorias();
            foreach (var ListaCategorias in listacat)
            {
                cboxCategorias.Items.Add(ListaCategorias);
            }

            cboxCategorias.DisplayMember = "Text";
            cboxCategorias.ValueMember = "Value";
        }


    }
}
