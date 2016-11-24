<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Material Design Bootstrap</title>

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

    <!-- Start your project here-->
    <div class= "container-fluid" id="Batalla">
    	<div class="row"></div>
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3" id="Personaje 1">
				<p style:"text-align:center;">Nombre personaje</p>
			</div>
			
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" id="Batalla">
				
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" id="Jug1" style="float:left">
					<form name ="DefenderJug1" action="Defender" method="post">
						<p style="text-align:center" ><button type="submit" class="btn btn-warning">Defender</button></p>	
					</form>
					<p>Energia: </p>
					<P>Vida: </P>
					
					
					<form name ="AtacarJug1" action="Atacar" method="post">
					<div class="md-form">
					    <i class="fa fa-envelope prefix"></i>
					    <input type="number" name="Energia1" id="Energia1" min="0" max="" class="form-control" required>
					    <label for="Energia1">Energia</label>
					</div>
					
					<p style="text-align:center" ><button type="submit" class="btn btn-danger">Atacar</button></p>
					
					
					</form>
				
				
				</div>
				
				
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" id="Jug2" style="floar:right">
				
				<form name ="DefenderJug2" action="Defender" method="post">
					<p style="text-align:center" ><button type="submit" class="btn btn-warning">Defender</button></p>	
				</form>
				<p>Energia: </p>
				<P>Vida: </P>
				<form name ="AtacarJug2" action="Atacar" method="post">
					<div class="md-form">
					    <i class="fa fa-envelope prefix"></i>
					    <input type="number" name="Energia2" id="Energia2" min="0" max="" class="form-control" required>
					    <label for="Energia2">Energia</label>
					</div>
					
					<p style="text-align:center" ><button type="submit" class="btn btn-danger">Atacar</button></p>
					
					
					</form>
					</div>
				
					
			</div>
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3" id="Personaje 2">
			<p style:"text-align:center;">Personaje 2</p>
			
			
				
				
			
			
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