<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="proyectogimnasio.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

    <title></title>
</head>
	
	<body class="img js-fullheight" style="background-image: url(images/bg.jpg);">
        <form id="form1" runat="server">
    <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">PROYECTO GIMNASIO</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Have an account?</h3>
		      		<div class="form-group">
		      		
                        <asp:TextBox ID="tcorreo" runat="server" placeholder="Username" required class="form-control" ></asp:TextBox>
		      		</div>
	            <div class="form-group">
	             
                <asp:TextBox ID="tclave" runat="server" placeholder="Password" required class="form-control" ></asp:TextBox>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            
                    <asp:Button ID="bingresar" class="form-control btn btn-primary submit px-3" runat="server"  Text="INGRESAR" OnClick="bingresar_Click" />
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#" style="color: #fff">OLVIDO SU CONTRASEÑA</a>
								</div>
	            </div>
	          <%--<p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>--%>
	         <%-- <div class="social d-flex text-center">
	          	<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
	          	<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
	          </div>--%>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
</>
        </form>
</html>
