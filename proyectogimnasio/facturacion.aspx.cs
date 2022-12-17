using FACTURACIONUTC;
using proyectogimnasio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FACTURACIONUTC
{
    public partial class facturacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                tfecha.Text = DateTime.Today.ToString();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] { new DataColumn("Codigo"), new DataColumn("Nombre"), new DataColumn("cantidad"), new DataColumn("Precio"), new DataColumn("Subtotal") });
                ViewState["Factura"] = dt;
                this.BindGrid();

            }

        }

        protected void BindGrid() 
        {
            GridView1.DataSource = (DataTable) ViewState["Factura"];
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (tcantidad.Text.Equals("") & tcantidad.Text.Equals("") & tcodigocliente.Equals(""))
                {
                    tcodigo.Focus();
                }
                else if (!tcantidad.Text.Equals("") & tcantidad.Text.Equals("") & tcodigocliente.Equals(""))
                {
                    tcantidad.Focus();
                }
                else if (!tcantidad.Text.Equals("") & !tcantidad.Text.Equals("") & tcodigocliente.Equals(""))
                {
                    tcodigocliente.Focus();
                }
                else
                {
                    DataTable dt = (DataTable)ViewState["Factura"];
                    float sb = (float.Parse(tcantidad.Text) * float.Parse(tprecio.Text));
                    ViewState["Subtotal"] = (float.Parse(tcantidad.Text) * float.Parse(tprecio.Text));
                    dt.Rows.Add(tcodigo.Text.Trim(), tnombre.Text.Trim(), tcantidad.Text.Trim(), tprecio.Text.Trim(), ViewState["Subtotal"]);
                    ViewState["Factura"] = dt;
                    this.BindGrid();

                    ViewState["subtotal"] = (float.Parse(LSB.Text) + sb);
                    LSB.Text = (ViewState["subtotal"]).ToString();
                    ViewState["IVA"] = (float.Parse(LSB.Text) * 0.13);
                    LIVA.Text = (ViewState["IVA"]).ToString();
                    ViewState["total"] = (float.Parse(LSB.Text) + float.Parse(LIVA.Text));
                    LTOTAL.Text = (ViewState["total"]).ToString();
                }
            }
            catch (Exception)
            {

                
            }
            

           
        }




        protected void Bfacturar_Click(object sender, EventArgs e)
        {
            ClsFacturacion.cliente = int.Parse(tcodigocliente.Text);
            ClsFacturacion.total = float.Parse(LTOTAL.Text);
            if (ClsFacturacion.AgregarMaestroFactura() > 0)
            {
                foreach (GridViewRow item in GridView1.Rows)
                {
                    int codigofac = 0;
                    int articulo = int.Parse(item.Cells[0].Text);
                    int cantidad = int.Parse(item.Cells[2].Text);
                    float precio = float.Parse(item.Cells[3].Text);

                    if (ClsFacturacion.AgregarDetalleFactura(codigofac, articulo, cantidad, precio) > 0)
                    {
                        tcodigo.Text = "";
                        tcantidad.Text = "";
                        tnombre.Text = "";
                        tnombrecliente.Text = "";
                        tcodigo.Focus();
                    }
                }
                DataTable ds = new DataTable();
                ds = null;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void tcodigo_TextChanged(object sender, EventArgs e)
        {
           // tcodigo.Text = Facturacion.buscarproducto(int.Parse(tcodigo.Text));
        }

        protected void tcodigo_TextChanged1(object sender, EventArgs e)
        {
            try
            {
                ClsProducto.codigo = int.Parse(tcodigo.Text);
                if (ClsProducto.BuscarProducto() > 0)
                {
                    tnombre.Text = ClsProducto.nombre;
                    tprecio.Text = ClsProducto.precio.ToString();
                    tcantidad.Focus();
                }
            }
            catch (Exception)
            {

               
            }
           
        }

        protected void tcodigocliente_TextChanged(object sender, EventArgs e)
        {
            ClsCliente.codigo = int.Parse(tcodigocliente.Text);
            try
            {
                ClsCliente.codigo = int.Parse(tcodigocliente.Text);
                if (ClsCliente.Buscarcliente() > 0)
                {
                    tnombrecliente.Text = ClsCliente.nombre;

                }
                else
                {
                    tnombrecliente.Text = "";
                }
            }
            catch (Exception)
            {


            }
        }

    }
}