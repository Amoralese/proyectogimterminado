<%@ Page Title="" Language="C#" MasterPageFile="~/menuprincipal.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="proyectogimnasio.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    CLIENTES<br />
    <br />
    <br />
    NOMBRE:
    <asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
&nbsp;&nbsp; APELLIDO:<asp:TextBox ID="TApellido" runat="server" CssClass="auto-style1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; TELEFONO:&nbsp;
    <asp:TextBox ID="TTelefono" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <br />
    NUMERO USUARIO:&nbsp;
    <asp:TextBox ID="TUsuario" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/images/CLIENTES.jpg" Width="346px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
&nbsp;
    <br />
    <br />
&nbsp;
    <asp:Button ID="BIngresar" runat="server" Height="46px" OnClick="Button1_Click" Text="INGRESAR" Width="87px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BBorrar" runat="server" Height="44px" OnClick="BBorrar_Click" Text="BORRAR" Width="73px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BModificar" runat="server" Height="44px" Text="MODIFICAR" Width="104px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BActualizar" runat="server" Height="48px" OnClick="BActualizar_Click" Text="ACTUALIZAR" Width="99px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;


</asp:Content>
