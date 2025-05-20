using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CDInventarios
    {
        Conexion cd_conexion = new Conexion();

        public List<dynamic> MtdListarCategorias()
        {
            List<dynamic> ListaCategorias = new List<dynamic>();
            string QueryListaCategorias = "Select CodigoMenu,Categoria from tbl_Menus";
            SqlCommand cmd = new SqlCommand(QueryListaCategorias, cd_conexion.MtdAbrirConexion());
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                ListaCategorias.Add(new
                {
                    Value = reader["CodigoMenu"],
                    Text = $"{reader["CodigoMenu"]} - {reader["Categoria"]}"
                });
            }
            cd_conexion.MtdCerrarConexion();
            return ListaCategorias;
        }

        public DataTable MtdConsultarCategorias()
        {
            string QueryConsultarCategorias = "Select * from tbl_Menus";
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(QueryConsultarCategorias, cd_conexion.MtdAbrirConexion());
            DataTable dt_Categorias = new DataTable();
            sqlAdapter.Fill(dt_Categorias);

            cd_conexion.MtdCerrarConexion();
            return dt_Categorias;
        }

       /* public void MtdAgregarCategorias()
        {
            string QueryAgregarCategorias = "Insert into tbl_Menus(FechaOrden, MontoTotalOrd, Estado, UsuarioSistema, FechaSistema) values (@CodigoOrdenEnc, @CodigoCliente, @CodigoMesa, @CodigoEmpleado, @FechaOrden, @MontoTotalOrd, @Estado, @UsuarioSistema, @FechaSistema)";
            SqlCommand CommandAgregarCategorias = new SqlCommand(QueryAgregarCategorias, cd_conexion.MtdAbrirConexion());
            CommandAgregarCategorias.Parameters.AddWithValue("@CodigoCliente", CodigoCliente);
            CommandAgregarCategorias.Parameters.AddWithValue("@CodigoMesa", CodigoMesa);
            CommandAgregarCategorias.Parameters.AddWithValue("@CodigoEmpleado", CodigoEmpleado);
            CommandAgregarCategorias.Parameters.AddWithValue("@FechaOrden", FechaOrden);
            CommandAgregarCategorias.Parameters.AddWithValue("@MontoTotalOrd", MontoTotalOrd);
            CommandAgregarCategorias.Parameters.AddWithValue("@Estado", Estado);
            CommandAgregarCategorias.Parameters.AddWithValue("@UsuarioSistema", UsuarioSistema);
            CommandAgregarCategorias.Parameters.AddWithValue("@FechaSistema", FechaSistema);
            CommandAgregarCategorias.ExecuteNonQuery();
            cd_conexion.MtdCerrarConexion();
        }*/

    }
}
