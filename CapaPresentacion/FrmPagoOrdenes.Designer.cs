namespace Sistema_Restaurante
{
    partial class FrmPagoOrdenes
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.label19 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label18 = new System.Windows.Forms.Label();
            this.lblMetodoPago = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.lblTotalPago = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lblDescuento = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.lblImpuesto = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.lblPropina = new System.Windows.Forms.Label();
            this.lblMontoOrden = new System.Windows.Forms.Label();
            this.txtCodigoOrdEnc = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblFechaActual = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.dgvMenus = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.txtCodigoPago = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnEliminar = new FontAwesome.Sharp.IconButton();
            this.btnSalir = new FontAwesome.Sharp.IconButton();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMenus)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // comboBox2
            // 
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Items.AddRange(new object[] {
            "Augusto Morán",
            "Gerber Canahuí",
            "Fernando Fajardo"});
            this.comboBox2.Location = new System.Drawing.Point(724, 229);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(164, 24);
            this.comboBox2.TabIndex = 51;
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label19.Location = new System.Drawing.Point(529, 228);
            this.label19.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(145, 22);
            this.label19.TabIndex = 50;
            this.label19.Text = "Usuario Sistema:";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePicker1.Location = new System.Drawing.Point(724, 186);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(164, 22);
            this.dateTimePicker1.TabIndex = 49;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label18.Location = new System.Drawing.Point(529, 186);
            this.label18.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(107, 22);
            this.label18.TabIndex = 48;
            this.label18.Text = "Fecha Pago:";
            // 
            // lblMetodoPago
            // 
            this.lblMetodoPago.AutoSize = true;
            this.lblMetodoPago.Location = new System.Drawing.Point(797, 106);
            this.lblMetodoPago.Name = "lblMetodoPago";
            this.lblMetodoPago.Size = new System.Drawing.Size(15, 16);
            this.lblMetodoPago.TabIndex = 47;
            this.lblMetodoPago.Text = "--";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Pendiente",
            "Parcial",
            "Completado",
            "Rechazado"});
            this.comboBox1.Location = new System.Drawing.Point(724, 144);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(164, 24);
            this.comboBox1.TabIndex = 46;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(529, 146);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(75, 22);
            this.label9.TabIndex = 45;
            this.label9.Text = "Estado: ";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(526, 102);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(121, 22);
            this.label8.TabIndex = 44;
            this.label8.Text = "Metodo Pago:";
            // 
            // lblTotalPago
            // 
            this.lblTotalPago.AutoSize = true;
            this.lblTotalPago.Location = new System.Drawing.Point(797, 65);
            this.lblTotalPago.Name = "lblTotalPago";
            this.lblTotalPago.Size = new System.Drawing.Size(15, 16);
            this.lblTotalPago.TabIndex = 43;
            this.lblTotalPago.Text = "--";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(526, 61);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(101, 22);
            this.label5.TabIndex = 42;
            this.label5.Text = "Total Pago:";
            // 
            // lblDescuento
            // 
            this.lblDescuento.AutoSize = true;
            this.lblDescuento.Location = new System.Drawing.Point(347, 267);
            this.lblDescuento.Name = "lblDescuento";
            this.lblDescuento.Size = new System.Drawing.Size(15, 16);
            this.lblDescuento.TabIndex = 41;
            this.lblDescuento.Text = "--";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(23, 261);
            this.label15.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(98, 22);
            this.label15.TabIndex = 40;
            this.label15.Text = "Descuento:";
            // 
            // lblImpuesto
            // 
            this.lblImpuesto.AutoSize = true;
            this.lblImpuesto.Location = new System.Drawing.Point(347, 216);
            this.lblImpuesto.Name = "lblImpuesto";
            this.lblImpuesto.Size = new System.Drawing.Size(15, 16);
            this.lblImpuesto.TabIndex = 39;
            this.lblImpuesto.Text = "--";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(23, 212);
            this.label12.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(87, 22);
            this.label12.TabIndex = 38;
            this.label12.Text = "Impuesto:";
            // 
            // lblPropina
            // 
            this.lblPropina.AutoSize = true;
            this.lblPropina.Location = new System.Drawing.Point(347, 169);
            this.lblPropina.Name = "lblPropina";
            this.lblPropina.Size = new System.Drawing.Size(15, 16);
            this.lblPropina.TabIndex = 37;
            this.lblPropina.Text = "--";
            // 
            // lblMontoOrden
            // 
            this.lblMontoOrden.AutoSize = true;
            this.lblMontoOrden.Location = new System.Drawing.Point(347, 125);
            this.lblMontoOrden.Name = "lblMontoOrden";
            this.lblMontoOrden.Size = new System.Drawing.Size(15, 16);
            this.lblMontoOrden.TabIndex = 36;
            this.lblMontoOrden.Text = "--";
            // 
            // txtCodigoOrdEnc
            // 
            this.txtCodigoOrdEnc.Location = new System.Drawing.Point(283, 80);
            this.txtCodigoOrdEnc.Margin = new System.Windows.Forms.Padding(4);
            this.txtCodigoOrdEnc.Name = "txtCodigoOrdEnc";
            this.txtCodigoOrdEnc.ReadOnly = true;
            this.txtCodigoOrdEnc.Size = new System.Drawing.Size(164, 22);
            this.txtCodigoOrdEnc.TabIndex = 35;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(23, 79);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(228, 22);
            this.label6.TabIndex = 34;
            this.label6.Text = "Codigo Orden Encabezado:\r\n";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(23, 165);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 22);
            this.label4.TabIndex = 3;
            this.label4.Text = "Propina: ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(23, 121);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(121, 22);
            this.label3.TabIndex = 2;
            this.label3.Text = "Monto Orden:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(23, 33);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(118, 22);
            this.label2.TabIndex = 1;
            this.label2.Text = "Codigo Pago:";
            // 
            // lblFechaActual
            // 
            this.lblFechaActual.AutoSize = true;
            this.lblFechaActual.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFechaActual.Location = new System.Drawing.Point(1134, 21);
            this.lblFechaActual.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblFechaActual.Name = "lblFechaActual";
            this.lblFechaActual.Size = new System.Drawing.Size(17, 22);
            this.lblFechaActual.TabIndex = 42;
            this.lblFechaActual.Text = "-";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(960, 21);
            this.label14.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(115, 22);
            this.label14.TabIndex = 40;
            this.label14.Text = "Fecha actual:";
            // 
            // dgvMenus
            // 
            this.dgvMenus.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvMenus.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMenus.Location = new System.Drawing.Point(13, 369);
            this.dgvMenus.Margin = new System.Windows.Forms.Padding(4);
            this.dgvMenus.Name = "dgvMenus";
            this.dgvMenus.ReadOnly = true;
            this.dgvMenus.RowHeadersWidth = 51;
            this.dgvMenus.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvMenus.Size = new System.Drawing.Size(1197, 196);
            this.dgvMenus.TabIndex = 41;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(407, 11);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(229, 31);
            this.label1.TabIndex = 38;
            this.label1.Text = "PAGO ORDENES";
            // 
            // txtCodigoPago
            // 
            this.txtCodigoPago.Location = new System.Drawing.Point(283, 31);
            this.txtCodigoPago.Margin = new System.Windows.Forms.Padding(4);
            this.txtCodigoPago.Name = "txtCodigoPago";
            this.txtCodigoPago.ReadOnly = true;
            this.txtCodigoPago.Size = new System.Drawing.Size(164, 22);
            this.txtCodigoPago.TabIndex = 16;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.comboBox2);
            this.groupBox1.Controls.Add(this.label19);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.label18);
            this.groupBox1.Controls.Add(this.lblMetodoPago);
            this.groupBox1.Controls.Add(this.comboBox1);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.lblTotalPago);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.lblDescuento);
            this.groupBox1.Controls.Add(this.label15);
            this.groupBox1.Controls.Add(this.lblImpuesto);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.lblPropina);
            this.groupBox1.Controls.Add(this.lblMontoOrden);
            this.groupBox1.Controls.Add(this.txtCodigoOrdEnc);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.txtCodigoPago);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(12, 47);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(1198, 314);
            this.groupBox1.TabIndex = 39;
            this.groupBox1.TabStop = false;
            // 
            // btnEliminar
            // 
            this.btnEliminar.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEliminar.ForeColor = System.Drawing.Color.Black;
            this.btnEliminar.IconChar = FontAwesome.Sharp.IconChar.Trash;
            this.btnEliminar.IconColor = System.Drawing.Color.Black;
            this.btnEliminar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnEliminar.IconSize = 24;
            this.btnEliminar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnEliminar.Location = new System.Drawing.Point(930, 578);
            this.btnEliminar.Margin = new System.Windows.Forms.Padding(4);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(136, 41);
            this.btnEliminar.TabIndex = 59;
            this.btnEliminar.Text = "Eliminar";
            this.btnEliminar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnEliminar.UseVisualStyleBackColor = true;
            // 
            // btnSalir
            // 
            this.btnSalir.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalir.ForeColor = System.Drawing.Color.Black;
            this.btnSalir.IconChar = FontAwesome.Sharp.IconChar.PowerOff;
            this.btnSalir.IconColor = System.Drawing.Color.Black;
            this.btnSalir.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnSalir.IconSize = 24;
            this.btnSalir.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSalir.Location = new System.Drawing.Point(1074, 578);
            this.btnSalir.Margin = new System.Windows.Forms.Padding(4);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(136, 41);
            this.btnSalir.TabIndex = 60;
            this.btnSalir.Text = "Salir";
            this.btnSalir.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSalir.UseVisualStyleBackColor = true;
            // 
            // FrmPagoOrdenes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1219, 632);
            this.Controls.Add(this.btnEliminar);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.lblFechaActual);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.dgvMenus);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmPagoOrdenes";
            this.Text = "FrmPagoOrdenes";
            ((System.ComponentModel.ISupportInitialize)(this.dgvMenus)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label lblMetodoPago;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label lblTotalPago;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lblDescuento;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label lblImpuesto;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label lblPropina;
        private System.Windows.Forms.Label lblMontoOrden;
        private System.Windows.Forms.TextBox txtCodigoOrdEnc;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblFechaActual;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.DataGridView dgvMenus;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtCodigoPago;
        private System.Windows.Forms.GroupBox groupBox1;
        private FontAwesome.Sharp.IconButton btnEliminar;
        private FontAwesome.Sharp.IconButton btnSalir;
    }
}