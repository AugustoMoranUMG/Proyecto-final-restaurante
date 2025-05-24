using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CDPagoOrdenes
    {
        Conexion cd_conexion = new Conexion();

        //primer paso LBL
        public string MtdConsultarPagoOrdenes(int CodigoOrdenEnc)//MTDMONTOORDEN
        {
            string montoorden;


            string QueryConsultarPagoOrdenes = "Select MontoTotalOrd from tbl_EncabezadoOrdenes where CodigoOrdenEnc = @CodigoOrdenEnc";
            SqlCommand CommandPagoOrdenes = new SqlCommand(QueryConsultarPagoOrdenes, cd_conexion.MtdAbrirConexion());
            CommandPagoOrdenes.Parameters.AddWithValue("@CodigoOrdenEnc", CodigoOrdenEnc);
            SqlDataReader reader = CommandPagoOrdenes.ExecuteReader();

            if (reader.Read())
            {
                montoorden = reader["MontoTotalOrd"].ToString();

            }
            else
            {
                montoorden = "";
            }

            cd_conexion.MtdCerrarConexion();
            return montoorden;
        }

        //primer paso CBOX
        public List<dynamic> MtdListarOrdenEnc()
        {
            List<dynamic> ListaOrdenEnc = new List<dynamic>();
            string QueryListaOrdenEnc = "Select CodigoOrdenEnc, MontoTotalOrd from tbl_EncabezadoOrdenes";
            SqlCommand cmd = new SqlCommand(QueryListaOrdenEnc, cd_conexion.MtdAbrirConexion());
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                ListaOrdenEnc.Add(new
                {
                    Value = reader["CodigoOrdenEnc"],
                    Text = $"{reader["CodigoOrdenEnc"]}"
                });

            }

            cd_conexion.MtdCerrarConexion();
            return ListaOrdenEnc;
        }
    }
}
