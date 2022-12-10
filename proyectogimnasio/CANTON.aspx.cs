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
    public partial class CANTON : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM canton"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
            protected void BIngresarcanton_Click(object sender, EventArgs e)
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO canton VALUES('" + TNombreCanton.Text + "', '" + TCodigoCanton.Text + "'  )", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
                LlenarGrid();
            }

        protected void BBorrarcanton_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("DELETE canton where CODIGO CANTON = '" + TCodigoCanton.Text + "'", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
        }

        protected void BActualizarcanton_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("update CANTON where NOMBRE CANTON  = '" + TNombreCanton.Text + "'", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
        }
    }
 }
