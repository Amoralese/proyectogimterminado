using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectogimnasio
{
    public class ClsFacturacion
    {

        public static int codigoFactura { get; set; }
        public static float total { get; set; }
        public static int codigoProducto { get; set; }
        public static int cantidad { get; set; }
        public static float precio { get; set; }
        public static int cliente { get; set; }
        public static string fecha { get; set; }


        // select top (1) * from MAE_FACTURA order by NFACTURA desc

        public static void Buscarfactura()
        {
            int retorno = 0;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select top (1) * from MAE_FACTURA order by NFACTURA desc ", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                codigoFactura = registro.GetInt32(0);

            }

            conexion.Close();

        }

    public static int AgregarDetalleFactura(int codfac, int codpro,  int cant, float costo)
        {
            Buscarfactura();
            int retorno = 0;
           
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO DET_FACTURA VALUES('" + codigoFactura + "', " + codpro + ", " + cant + "," + costo + ")", conexion);
                comando.ExecuteNonQuery();
                retorno = 1;
            }
            catch (Exception)
            {

                retorno = 0;
            }
            finally
            {
                conexion.Close();
            }

            return retorno;

        }

        public static int AgregarMaestroFactura()
        {
            int retorno = 0;
            fecha = DateTime.Today.ToString();
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            try
            {
               conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO MAE_FACTURA VALUES('" + fecha + "', '" + cliente + "', " + total + ")", conexion);
                comando.ExecuteNonQuery();
                retorno = 1;
            }
            catch (Exception)
            {

                retorno = 0;
            }
            finally
            {
                conexion.Close();
            }

            return retorno;

    }
}
}