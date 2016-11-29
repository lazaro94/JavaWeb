<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "entidades.Personaje"%>
<%@page import= "logic.ControladorBatallas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Java TP</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">

    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">

</head>

<%
Personaje p1 = ((Personaje)session.getAttribute("P1"));
Personaje p2 = ((Personaje)session.getAttribute("P2"));
ControladorBatallas cb = ((ControladorBatallas)session.getAttribute("Controlador"));

%>

<body>

    <!-- Start your project here-->
    <div class= "container-fluid" id="Batalla">
    	<div class="row"></div>
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3" id="Personaje 1">
			<center>
				<p style:"text-align:center;"><%=p1.getNombre()%></p>
			</center>
				<form name ="DefenderJug1" action="Defender" method="post">
					<%if(cb.getTurnoActual()==1){ %>
						<p style="text-align:center" ><button type="submit" class="btn btn-warning">Defender</button></p>	
						
					</form>
					<form name ="AtacarJug1" action="Atacar" method="post">
					<div class="md-form">
					    <i class="fa fa-envelope prefix"></i>
					    <input type="number" name="Energia1" id="Energia1" min="0" max="<%=p1.getEnergiaBatalla()%>" class="form-control" required>
					    <label for="Energia1">Energia</label>
					</div>
					
					<p style="text-align:center" ><button type="submit" class="btn btn-danger">Atacar</button></p>
					<%} %>
					
					</form>
			</div>
			
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" id="Batalla">
				
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" id="Jug1" style="float:left">
				<br>
				<br>
				<br>
				<br>
				<br>
					<p>Energia:<%=p1.getEnergiaBatalla()%> </p>
					<p>Vida: <%=p1.getVidaBatalla()%></p>
					
					
					
				
				
				</div>
				
				
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" id="Jug2" style="floar:right">
				<br>
				<br>
				<br>
				<br>
				<br>
					<p>Energia:<%=p2.getEnergiaBatalla()%> </p>
					<p>Vida: <%=p2.getVidaBatalla()%></p>
				
					</div>
				
					
			</div>
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3" id="Personaje 2">
				<center>
			
					<p><%=p2.getNombre()%></p>
				</center>
			<form name ="DefenderJug2" action="Defender" method="post">
			<%if(cb.getTurnoActual()!=1){ %>
					<p style="text-align:center" ><button type="submit" class="btn btn-warning">Defender</button></p>	
			</form>
			<form name ="AtacarJug2" action="Atacar" method="post">
					<div class="md-form">
					    <i class="fa fa-envelope prefix"></i>
					    <input type="number" name="Energia2" id="Energia2" min="0" max="<%=p2.getEnergiaBatalla()%>" class="form-control" required>
					    <label for="Energia2">Energia</label>
					</div>
					
					<p style="text-align:center" ><button type="submit" class="btn btn-danger">Atacar</button></p>
					
					<%} %>
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