<%@ Page Title="" Language="C#" MasterPageFile="~/menuprincipal.Master" AutoEventWireup="true" CodeBehind="CANTON.aspx.cs" Inherits="proyectogimnasio.CANTON" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    CANTON<br />
    <br />
    <br />
&nbsp;<asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/images/CANTON.jpg" Width="346px" />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    NOMBRE CANTON:<asp:TextBox ID="TNombreCanton" runat="server"></asp:TextBox>
    &nbsp;&nbsp; CODIGO PROVINCIA:
    <asp:TextBox ID="TCodigoprovincia" runat="server"></asp:TextBox>
    &nbsp;
    <br />
    CODIGO CANTON:
    <asp:TextBox ID="TCodigocanton" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="BIngresarcanton" runat="server" OnClick="BIngresarcanton_Click" Text="INGRESAR" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BBorrarcanton" runat="server" OnClick="BBorrarcanton_Click" Text="BORRAR" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BActualizarcanton" runat="server" OnClick="BActualizarcanton_Click" Text="ACTUALIZAR" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
