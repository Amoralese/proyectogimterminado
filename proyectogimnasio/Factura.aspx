<%@ Page Title="" Language="C#" MasterPageFile="~/menuprincipal.Master" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="proyectogimnasio.Factura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    FACTURACION<br />
    <br />
    CLIENTE:&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp; PRODUCTO:&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <br />
    <br />
     CANTIDAD:
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:GridView ID="datagrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" >
 </asp:GridView>

    <br />

</asp:Content>
