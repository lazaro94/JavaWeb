<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "entidades.Personaje"%>
<%@page import= "logic.ControladorPersonaje" %>
<%@page import= "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Tp Java</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">

    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body>

<%
ControladorPersonaje cp = new ControladorPersonaje();
ArrayList<Personaje> personajes = new ArrayList<Personaje>();
try{
	personajes=cp.todosPersonajes();
}
catch(Exception ex){
	
}
%>
    <!-- Start your project here-->
    <div class= "container-fluid" id="Principal">
    	<div class="row"></div>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4" id="Personaje 1">
			<p style:"text-align:center;">Personaje 1</p>
			
			<form name ="iniciarBatalla" action="Iniciar" method="post">			<!--Blue select-->
			<select id="per1" name="per1" class="form-control validate" required>
				<option value="" disabled selected>Seleccione Personaje 1:</option>
				<%for(Personaje p : personajes) {%>
			    <option value="<%=p.getNombre()%>"><%=p.getNombre()%></option>
			    <%} %>
			</select>
		
			
			</div>
			
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4" id="Batalla">
				<p style="text-align:center" ><button type="submit" class="btn btn-default">Iniciar Batalla</button></p>	
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4" id="Personaje 2">
			<p style:"text-align:center;">Personaje 2</p>
			
			
				<select id="per2" name="per2" class="form-control validate" required>
					<option value="" disabled selected>Seleccione Personaje 2:</option>
					<%for(Personaje p : personajes) {%>
			    		<option value="<%=p.getNombre()%>"><%=p.getNombre()%></option>
			    		<%} %>
			</select>
				</select>
				
			
			</form>
			</div>
    <!-- /Start your project here-->
    

    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <script> 
	    $(document).ready(function() {
	    $('.mdb-select').material_select();
	  });
    </script>


</body>

</html>