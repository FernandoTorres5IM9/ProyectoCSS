<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("botonRegistro") != null) 
    {
        response.sendRedirect("JSP/Registro.jsp");
%>
<%--<jsp:forward page="JSP/Registro.jsp"></jsp:forward>--%>
<%
        return;
    }
    else
        if(request.getParameter("botonLogin") != null)
        {
        response.sendRedirect("JSP/Login.jsp");
%>            
    <%--<jsp:forward page="JSP/Login.jsp"></jsp:forward>--%>
<%
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
        	<link rel="icon" type="image/png" href="JSP/images/icons/favicon.ico"/>
<!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href=JSP/"fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="JSP/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="JSP/css/util.css">
                <link rel="stylesheet" type="text/css" href="JSP/css/main.css">
                <link rel="stylesheet" type="text/css" href="index.css">
<!--===============================================================================================-->
    </head>
    <body>
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
                            <form action="index.jsp" method="post">
                                <span class="login100-form-title p-b-26">
						Anicare
                                </span>
                                <center>
                                <!--<input type="submit" name="botonRegistro" value="Registrar" > &nbsp; &nbsp; &nbsp;
                                <input type="submit" name="botonLogin" value="Iniciar Sesión" >-->
                                <a href="JSP/Login.jsp" class="link">Iniciar Sesión</a>
                                <a href="JSP/Registro.jsp" class="link">Registrarse</a>
                                </center>
                            </form>
                        </div>
                </div>
        </div>
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
