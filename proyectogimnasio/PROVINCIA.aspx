<%@ Page Title="" Language="C#" MasterPageFile="~/menuprincipal.Master" AutoEventWireup="true" CodeBehind="PROVINCIA.aspx.cs" Inherits="proyectogimnasio.PROVINCIA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    PROVINCIA

    <br />
    <br />
    <br />

    <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/images/PROVINCIAS.jpg" Width="346px" />

&nbsp;<br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    NOMBRE PROVINCIA:&nbsp;
    <asp:TextBox ID="TNombreprovincia" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CODIGO PROVINCIA:
    <asp:TextBox ID="TCodigoprovincia" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;
    <br />
    <asp:Button ID="Bingresarprovincia" runat="server" Height="36px" OnClick="Bingresarprovincia_Click" Text="INGRESAR" Width="94px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BBorrarProvincia" runat="server" Height="34px" OnClick="BBorrarProvincia_Click" Text="BORRAR" Width="91px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BModificarprovincia" runat="server" Height="34px" Text="MODIFICAR" Width="84px" />
&nbsp;&nbsp;
    <asp:Button ID="BActualizarprovincia" runat="server" Height="33px" OnClick="BActualizarprovincia_Click" Text="ACTUALIZAR" Width="91px" />
&nbsp;&nbsp;
    <br />
&nbsp;&nbsp; : 

</asp:Content>
