using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectogimnasio
{
    public partial class HOME : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            ClsUsuario.SetCorreo(tcorreo.Text);
            ClsUsuario.SetClave(tclave.Text);

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOGIMNASIOConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select correo, clave from usuarios where correo = '" + ClsUsuario.GetCorreo() + "' " +
                "and clave = '" + ClsUsuario.Getclave() + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("MENU.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : USUARIO O CONTRASEÑA INVALIDO.');", true);
            }


            conexion.Close();
        }
    }
}