using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace proyectogimnasio
{
    public class ClsCliente
    {
        public static int codigo { get; set; }
        public static string nombre { get; set; }

        public static int Buscarcliente()
        {
            int retorno = 0;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("SELECT codigo, nombre, apellido FROM clientes where codigo = " + codigo + " ", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                codigo = registro.GetInt32(0);
                nombre = registro.GetString(1) + "  " + registro.GetString(2);
               
                retorno = 1;

            }
            else
            {
                retorno = 0;
            }
            conexion.Close();


            return retorno;
        }
    }
}
