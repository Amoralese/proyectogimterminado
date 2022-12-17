<%@ Page Title="" Language="C#" MasterPageFile="~/menuprincipal.Master" AutoEventWireup="true" CodeBehind="USUARIOS.aspx.cs" Inherits="proyectogimnasio.USUARIOS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    USUARIOS<br />
<asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/images/USUARIOS.jpg" Width="302px" />
<br />
<br />
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
<br />
    CORREO: :<asp:TextBox ID="TCorreo" runat="server"></asp:TextBox>
&nbsp; CLAVE:&nbsp;&nbsp;
<asp:TextBox ID="TClave" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOMBRE:
<asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
&nbsp;&nbsp; CODIGO USUARIO:
    <asp:TextBox ID="TCodigousuario" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="Bagregarusuario" runat="server" OnClick="Bagregarusuario_Click" Text="AGREGAR" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="BBorrarusuario" runat="server" Text="BORRAR" OnClick="BBorrarusuario_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="BActualizarusuario" runat="server" Text="ACTUALIZAR" OnClick="BActualizarusuario_Click" />
<br />
<br />
<br />
<br />
</asp:Content>

