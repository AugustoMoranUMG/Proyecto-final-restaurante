using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CDInventarios
    {
        CDconexion cd_conexion = new CDconexion();

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


    }
}
