using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CDPagoPlanillas
    {
        Conexion cd_conexion = new Conexion();

        //primer paso LBL
        public string MtdConsultarEmpleado(int CodigoEmpleado)
        {
            string empleado;

            string QueryConsultarEmpleado = "Select Salario from tbl_empleados where CodigoEmpleado = @CodigoEmpleado";
            SqlCommand CommandEmpleados = new SqlCommand(QueryConsultarEmpleado, cd_conexion.MtdAbrirConexion());
            CommandEmpleados.Parameters.AddWithValue("@CodigoEmpleado", CodigoEmpleado);
            SqlDataReader reader = CommandEmpleados.ExecuteReader();

            if (reader.Read())
            {
                empleado = reader["Salario"].ToString();

            }
            else
            {
                empleado = "";
            }

            cd_conexion.MtdCerrarConexion();
            return empleado;
        }

        //primer paso CBOX
        public List<dynamic> MtdListarEmpleados()
        {
            List<dynamic> ListaEmpleado = new List<dynamic>();
            string QueryListaEmpleado = "Select CodigoEmpleado, Nombre from tbl_empleados";
            SqlCommand cmd = new SqlCommand(QueryListaEmpleado, cd_conexion.MtdAbrirConexion());
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                ListaEmpleado.Add(new
                {
                    Value = reader["CodigoEmpleado"],
                    Text = $"{reader["CodigoEmpleado"]} - {reader["Nombre"]}"
                });
            }

            cd_conexion.MtdCerrarConexion();
            return ListaEmpleado;
        }

    }
}
