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

        //primer paso
        public string MtdConsultarCategoria(string CodigoMenu)
        {
            string categoria;

            string QueryConsultarCategorias = "Select Categoria from tbl_Menus where CodigoMenu = @CodigoMenu";
            SqlCommand CommandCategorias = new SqlCommand(QueryConsultarCategorias, cd_conexion.MtdAbrirConexion());
            CommandCategorias.Parameters.AddWithValue("@CodigoMenu", CodigoMenu);
            SqlDataReader reader = CommandCategorias.ExecuteReader();

            if (reader.Read())
            {
                categoria = reader["Categoria"].ToString();
            }
            else
            {
                categoria = "";
            }

            cd_conexion.MtdCerrarConexion();
            return categoria;
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
