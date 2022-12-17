<%@ Page Title="" Language="C#" MasterPageFile="~/menuprincipal.Master" AutoEventWireup="true" CodeBehind="DISTRITO.aspx.cs" Inherits="proyectogimnasio.DISTRITO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    DISTRITO<br />
    <br />
    <br />
&nbsp;<asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/images/DISTRITO.jpg" Width="346px" />

    <br />
&nbsp;
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    NOMBRE DISTRITO:&nbsp;
    <asp:TextBox ID="TNombredistrito" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; CODIGO CANTON:&nbsp;
    <asp:TextBox ID="TCodigoCANTON" runat="server"></asp:TextBox>
    &nbsp;&nbsp; CODIGO DISTRITO:
    <asp:TextBox ID="TcodigoDistrito" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="BAgregardistrito" runat="server" OnClick="BAgregardistrito_Click" Text="AGREGAR" />
&nbsp;&nbsp;
    <asp:Button ID="BBorrardistrito" runat="server" OnClick="BBorrardistrito_Click" Text="BORRAR" />
&nbsp;&nbsp;
    &nbsp;&nbsp;
    <asp:Button ID="BActualizardistrito" runat="server" OnClick="BActualizardistrito_Click" Text="ACTUALIZAR" />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
