<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Usuario = request.getParameter("Usuario");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP</title>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <jsp:useBean id="usuario" scope="page" class="mx.edu.ipn.cecyt9.anicare.model.Usuario_1">
        </jsp:useBean> 
        <%--${usuario.setNombre(Usuario)}
        ${usuario.nombre}--%>
        
        
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
                            <form class="login100-form validate-form" action="Registro" method="post">
					<span class="login100-form-title p-b-26">
						¡Bienvenido a Anicare!
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>
                        
                                    <div class="wrap-input100 validate-input" data-validate = "Usuario inv&aacute;lido.">
						<input class="input100" type="text" name="usuario">
                                                <span class="focus-input100" data-placeholder="Usuario"></span>
					</div>
                                        <div class="wrap-input100 validate-input" data-validate = "Usuario inv&aacute;lido.">
						<input class="input100" type="text" name="apPat">
                                                <span class="focus-input100" data-placeholder="Apellido Paterno"></span>
					</div>
                                        <div class="wrap-input100 validate-input" data-validate = "Usuario inv&aacute;lido.">
						<input class="input100" type="text" name="apMat">
                                                <span class="focus-input100" data-placeholder="Apellido Materno"></span>
					</div>
                                        <div class="wrap-input100 validate-input" data-validate = "Usuario inv&aacute;lido.">
						<input class="input100" type="text" name="Nombre">
                                                <span class="focus-input100" data-placeholder="Nombre"></span>
					</div>
                                        <div class="wrap-input100 validate-input" data-validate = "Correo inv&aacute;lido.">
						<input class="input100" type="mail" name="email">
                                                <span class="focus-input100" data-placeholder="Correo Electr&oacute;nico"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Llena este campo">
						<input class="input100" type="password" name="pass">
                                                <span class="focus-input100" data-placeholder="Contrase&ntilde;a"></span>
					</div>
                                        <div class="wrap-input100 validate-input" data-validate="Llena este campo">
						<input class="input100" type="password" name="pass">
                                                <span class="focus-input100" data-placeholder="Confirma contrase&ntilde;a"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Ingresar
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
                                                    
						</span>
                                                <br><br>
						<a class="txt2">
						    
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
        
    </body>
</html>