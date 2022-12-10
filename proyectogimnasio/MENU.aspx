<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MENU.aspx.cs" Inherits="proyectogimnasio.MENU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/Estilomenu.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 <div class="navbar">
  <a href="#home">Inicio</a>
  <div class="subnav">
    <button class="subnavbtn">Catalogo <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#company">Usuarios</a>
      <a href="#team">Clientes</a>
      <a href="#careers">Productos</a>
    </div>
  </div> 
  <div class="subnav">
    <button class="subnavbtn">Direcciones <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#bring">Canton</a>
      <a href="#deliver">Distrito</a>
      <a href="#package">Provincia</a>
    </div>
  </div> 
  
  <a href="#contact">Ayuda</a>
</div>
    </form>
</body>
</html>
