using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectogimnasio
{
    public partial class PRODUCTOS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM PRODUCTO"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            datagrid.DataSource = dt;
                            datagrid.DataBind();
                        }
                    }
                }
            }
        }

        protected void BINGRESARP_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO PRODUCTO VALUES('" + TNOMBREP.Text + "', '" + TPRECIOP.Text + "'  )", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
        }

        protected void BBORRARP_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("DELETE PRODUCTO where NOMBRE producto  = '" + TNOMBREP.Text + "'", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
        }

        protected void BACTUALIZARP_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("update PRODUCTO where NOMBRE  = '" + TNOMBREP.Text + "'", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
        }
    }
}