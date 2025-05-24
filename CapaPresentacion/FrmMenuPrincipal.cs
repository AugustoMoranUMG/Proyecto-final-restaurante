using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Media.Animation;

namespace Sistema_Restaurante
{
    public partial class FrmMenuPrincipal: Form
    {
        public FrmMenuPrincipal()
        {
            InitializeComponent();
            //Estas lineas eliminan los parpadeos del formulario o controles en la interfaz grafica (Pero no en un 100%)
            this.SetStyle(ControlStyles.ResizeRedraw, true);
            this.DoubleBuffered = true;
        }

        private void PanelContenedor_Paint(object sender, PaintEventArgs e)
        {

        }

        #region Funcionalidades del Formulario
        //RESIZE METODO PARA REDIMENCIONAR/CAMBIAR TAMAÑO A FORMULARIO EN TIEMPO DE EJECUCION ----------------------------------------------------------
        private int tolerance = 12;
        private const int WM_NCHITTEST = 132;
        private const int HTBOTTOMRIGHT = 17;
        private Rectangle sizeGripRectangle;

        protected override void WndProc(ref Message m)
        {
            switch (m.Msg)
            {
                case WM_NCHITTEST:
                    base.WndProc(ref m);
                    var hitPoint = this.PointToClient(new Point(m.LParam.ToInt32() & 0xffff, m.LParam.ToInt32() >> 16));
                    if (sizeGripRectangle.Contains(hitPoint))
                        m.Result = new IntPtr(HTBOTTOMRIGHT);
                    break;
                default:
                    base.WndProc(ref m);
                    break;
            }
        }
        //----------------DIBUJAR RECTANGULO / EXCLUIR ESQUINA PANEL 
        protected override void OnSizeChanged(EventArgs e)
        {
            base.OnSizeChanged(e);
            var region = new Region(new Rectangle(0, 0, this.ClientRectangle.Width, this.ClientRectangle.Height));

            sizeGripRectangle = new Rectangle(this.ClientRectangle.Width - tolerance, this.ClientRectangle.Height - tolerance, tolerance, tolerance);

            region.Exclude(sizeGripRectangle);
            this.PanelContenedor.Region = region;
            this.Invalidate();
        }
        //----------------COLOR Y GRIP DE RECTANGULO INFERIOR
        protected override void OnPaint(PaintEventArgs e)
        {
            SolidBrush blueBrush = new SolidBrush(Color.FromArgb(244, 244, 244));
            e.Graphics.FillRectangle(blueBrush, sizeGripRectangle);

            base.OnPaint(e);
            ControlPaint.DrawSizeGrip(e.Graphics, Color.Transparent, sizeGripRectangle);
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        //Capturar posicion y tamaño antes de maximizar para restaurar
        int lx, ly;
        int sw, sh;
        private void btnMaximizar_Click(object sender, EventArgs e)
        {
            lx = this.Location.X;
            ly = this.Location.Y;
            sw = this.Size.Width;
            sh = this.Size.Height;

            btnMaximizar.Visible = false;
            btnRestaurar.Visible = true;

            this.Size = Screen.PrimaryScreen.WorkingArea.Size;
            this.Location = Screen.PrimaryScreen.WorkingArea.Location;
        }

        private void btnRestaurar_Click(object sender, EventArgs e)
        {
            btnMaximizar.Visible = true;
            btnRestaurar.Visible = false;
            this.Size = new Size(sw, sh);
            this.Location = new Point(lx, ly);
        }

        private void PanelBarraTitulo_MouseMove(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void btnMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        //Método de arrastrar el formulario
        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();

        private void button1_Click(object sender, EventArgs e)
        {
            AbrirFormulario<FrmInventarios>();
            button1.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AbrirFormulario<FrmPagoOrdenes>();
            button2.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            AbrirFormulario<FrmPagoPlanillas>();
            button3.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            AbrirFormulario<frmClientes>();
            button4.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            AbrirFormulario<frmDetallesOrdenes>();
            button5.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            AbrirFormulario<frmEmpleados>();
            button6.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            AbrirFormulario<frmEncabezadoOrdenes>();
            button7.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            AbrirFormulario<frmMenus>();
            button8.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            AbrirFormulario<frmMesas>();
            button9.BackColor = Color.FromArgb(12, 61, 92);
        }

        private void button10_Click(object sender, EventArgs e)
        {
            AbrirFormulario<frmUsuarios>();
            button10.BackColor = Color.FromArgb(12, 61, 92);
        }

        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hWnd, int wMsg, int wParam, int lParam);
        #endregion

        //METODO PARA ABRIR FORMULARIO DENTRO DEL PANEL
        private void AbrirFormulario<MiForm>()where MiForm : Form,new()
        {
            Form formulario;
            formulario = PanelFormularios.Controls.OfType<MiForm>().FirstOrDefault(); //Busca si el formulario ya existe
            if (formulario == null) //Crea un nuevo formulario
            {
                formulario = new MiForm();
                formulario.TopLevel = false; //Evita que el formulario se comporte como un formulario normal
                formulario.FormBorderStyle = FormBorderStyle.None;
                formulario.Dock = DockStyle.Fill; // Ajusta el formulario al panel
                PanelFormularios.Controls.Add(formulario); //Agrega el formulario al panel
                PanelFormularios.Tag = formulario; //Asigna el formulario al panel
                formulario.Show(); //Muestra el formulario
                formulario.BringToFront(); //Trae el formulario al frente
                formulario.FormClosed += new FormClosedEventHandler(CloseForms);
            }
            else
            {
                formulario.BringToFront(); //Trae el formulario al frente
            }
        }

        private void CloseForms(object sender, FormClosedEventArgs e)
        {
            if (Application.OpenForms["FrmInventarios"] == null)           
                button1.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["FrmPagoOrenes"] == null)
                button2.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["FrmPagoPlanillas"] == null)
                button3.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["frmClientes"] == null)
                button4.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["frmDetallesOrdenes"] == null)
                button5.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["frmEmpleados"] == null)
                button6.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["frmEncabezadoOrdenes"] == null)
                button7.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["frmMenus"] == null)
                button8.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["frmMesas"] == null)
                button9.BackColor = Color.FromArgb(12, 61, 92);
            if (Application.OpenForms["frmUsuarios"] == null)
                button10.BackColor = Color.FromArgb(12, 61, 92);

        }
    }
}
