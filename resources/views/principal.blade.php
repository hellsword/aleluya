<!DOCTYPE HTML>
<!--
	Ion by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>ALELUYA</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Buefy CSS -->
<link rel="stylesheet" href="https://unpkg.com/buefy/lib/buefy.min.css">
<link rel="stylesheet" href="//cdn.materialdesignicons.com/2.0.46/css/materialdesignicons.min.css">

    <script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<!-- <script src="js/skel-layers.min.js"></script>  -->
		<script src="js/init.js"></script>
		
		<!--Iconos NAV -->
		<link href="extra/css/pe-icon-7-stroke.css" rel="stylesheet" />
		<link href="extra/css/ct-navbar.css" rel="stylesheet" />  

		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>


		<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
		<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- CKEDITOR --> 
		<!-- <script src="vendors/ckeditor/ckeditor.js"></script>  -->
		<script src="https://cdn.ckeditor.com/4.7.0/full-all/ckeditor.js"></script>

		<link rel="stylesheet" href="https://unpkg.com/vue-form-wizard/dist/vue-form-wizard.min.css">

		<!--ICONOS-->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">

		<!-- Podria dar problemas en los estilos -->
		<link rel="stylesheet" href="css/app.css" />

		<link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons">
    
    <!--ESTILO PARA LOS BOTONES-->
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js" integrity="sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ" crossorigin="anonymous"></script>
		
		<!-- BOTONES -->
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		
		<!-- CSS para slideshow de imagenes -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.7/css/swiper.min.css" rel="stylesheet">

		<!-- Graficos estadisticos -->
		<script src="https://www.gstatic.com/charts/loader.js"></script>

		<link rel="stylesheet" href="path/to/pe-icon-7-stroke/css/pe-icon-7-stroke.css">

	</head>
	<body id="top">
    

    <div id="app" >

			<!-- Barra superior -->
			<router-view name="nav" :auth=servicios.auth></router-view>
			
			<!--Pagina principal -->
			<router-view name="main" :auth=servicios.auth :servicios=ultimosServicios></router-view>

			<!--Creacion de nuevo anuncio -->
			<router-view name="nuevo_servicio" :filtros=filtros></router-view>

			<!--Pagina para ver en detalle un anuncio -->
			<router-view name="verAnuncio" :auth=servicios.auth></router-view>

			<!--Paginas de autentificacion -->
			<router-view name="login" ></router-view>
			<router-view name="register" ></router-view>

      <section id="main" class="">
			
				<div class="container" >
					<div class="row">

							

							<!--Componentes laterales -->
              <router-view name="aside_search" :filtros=filtros></router-view>
							<router-view name="aside_secretaria" :auth=servicios.auth></router-view>
							<router-view name="aside_fechas" :filtro2=filtro2></router-view>
							<router-view name="anuncios"></router-view>
							<router-view name="listausuarios" :auth=servicios.auth></router-view>
							<router-view name="agregarpalabra"></router-view>
              <router-view name="servicios" :ruta=getPath() :auth=servicios.auth ></router-view>
               <router-view name="gestion" :ruta=getPath() :auth=servicios.auth ></router-view>


          </div>
        </div>
      </section>

    
    </div>

		
		<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<ul class="copyright">
						<li>&copy; MUMEFLET. All rights reserved.</li>
						<li>Design: <a href="http://templated.co">TEMPLATED</a></li>
						<li>Images: <a href="http://unsplash.com">Unsplash</a></li>
					</ul>
				</div>
			</footer>
			

	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js" ></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
  <script src="js/app.js"></script>
	</body>
</html>