<%@ Page Title="" Language="C#" MasterPageFile="~/menuprincipal.Master" AutoEventWireup="true" CodeBehind="PRODUCTOS.aspx.cs" Inherits="proyectogimnasio.PRODUCTOS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            border: solid 2px black;
            min-width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    PRODUCTOS


    <br />
    <br />


    <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl="~/images/PRODUCTOS.jpg" Width="204px" />
     <asp:GridView ID="datagrid" runat="server" CssClass="auto-style1" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" Height="143px" Width="623px" >
          </asp:GridView>
    <br />
    NOMBRE PRODUCTO:
    <asp:TextBox ID="TNOMBREP" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; PRECIO:&nbsp;
    <asp:TextBox ID="TPRECIOP" runat="server"></asp:TextBox>
    &nbsp;&nbsp; CODIGO PRODUCTO:
    <asp:TextBox ID="TCodigoproducto" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="BINGRESARP" runat="server" Height="32px" OnClick="BINGRESARP_Click" Text="INGRESAR" Width="92px" />
&nbsp;&nbsp;
    <asp:Button ID="BBORRARP" runat="server" Height="31px" OnClick="BBORRARP_Click" Text="BORRAR" Width="84px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BACTUALIZARP" runat="server" Height="31px" OnClick="BACTUALIZARP_Click" Text="ACTUALIZAR" Width="115px" />
    <br />
</asp:Content>
