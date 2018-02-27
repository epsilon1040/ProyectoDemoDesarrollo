<%-- 
    Document   : index
    Created on : Dec 27, 2017, 11:07:00 AM
    Author     : 1415506
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Expires" content="0">
        <meta http-equiv="Last-Modified" content="0">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <meta http-equiv="Pragma" content="no-cache">
        
        <title>Conversión de Temperatura</title>
        <link rel="stylesheet" href="css/main.css?v=13.3"><link>
        <script src="js/jquery.js"></script>
        <script type="text/javascript">
            function Convertir(event)
            {
                event.preventDefault();
                $.ajax({
                    type:"POST",
                    url:"Conection.jsp",
                    data:$('#frmBuscar').serialize(),
                    success:function(volado)
                    {
                        $("#resultado").html(volado);
                    },
                    dataType:"html"
                });
            }
            

            
        </script>
        
        

   <!DOCTYPE html>

	<title>Contact V4</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
    
    <div class="container-contact100">
            <ul class="navigation">
		<div class="wrap-contact100">
                    <form class="contact100-form validate-form" name="Formulario" id="frmBuscar">
                        
                        <span class="contact100-form-title">    
                                <div id="imagen"> <img src="images/icons/tcs2.jpg" width="80" height="80"/></div>
					<br>Conversi&#243n de Temperatura </br>
					Demo Integraci&#243n Continua
                                        
				</span>
                       
                           <div class="wrap-input100 validate-input">
					<span class="label-input100">Temperatura</span>
					<input class="input100" type="text" id="temperatura" name="temperatura" placeholder="Escriba la Temperatura...">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 input100-select">
					<span class="label-input100">Seleccione escala</span>
					<div>
						<select class="selection-2" name="fUnidad">
                                                    <option> Seleccione...</option>
							<option value="degreeCelsius">Grados Celsius</option>
							<option value="degreeFahrenheit">Grados Fahrenheit</option>
							<option value="degreeRankine">Grados Rankine</option>
							<option value="degreeReaumur">Grados Reaumur</option>
							<option value="kelvin">Grados kelvin</option>
						</select>
					</div>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 input100-select">
					<span class="label-input100">Seleccione escala</span>
					<div>
						<select class="selection-2" name="tUnidad">
                                                        <option> Seleccione...</option>
                                                        <option value="degreeCelsius">Grados Celsius</option>
							<option value="degreeFahrenheit">Grados Fahrenheit</option>
							<option value="degreeRankine">Grados Rankine</option>
							<option value="degreeReaumur">Grados Reaumur</option>
							<option value="kelvin">Grados kelvin</option>
						</select>
					</div>
					<span class="focus-input100"></span>
				</div>
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
                                                <button class="contact100-form-btn" name="convertir" onclick="Convertir(event);">
							<span>
								Convertir
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
                                               
					</div>
				</div>
                        <br></br>
                            <div class="label-input101" id="resultado">
				
                        </div>
			</form>	
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
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
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

