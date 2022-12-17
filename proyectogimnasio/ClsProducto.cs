using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace proyectogimnasio
{
    public class ClsProducto
    {
        public static int  codigo { get; set; }
        public static string nombre { get; set; }
        public  static float precio { get; set; }


        public static int BuscarProducto()
        {
            int retorno = 0;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("SELECT codigo, nombre,precio FROM PRODUCTO where codigo = '" + codigo + "' " , conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                codigo = registro.GetInt32(0);
                nombre = registro.GetString(1);
                precio = registro.GetFloat(2);
                retorno = 1;
            }
            else
            {
                retorno = 0;
            }


            conexion.Close();

        }
    }
}