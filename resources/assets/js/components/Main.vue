<template>
<div>

	<div id="geochart-colors" style="width: 700px; height: 433px;"></div>

	<!-- Grafico (borrar despues) -->
<line-chart :data="{'2017-01-01': 11, '2017-01-02': 6}"></line-chart>
<bar-chart :data="[['Work', 32], ['Play', 1492]]"></bar-chart>
<geo-chart region="CL" ></geo-chart>
<timeline :data="[['Washington', '1789-04-29', '1797-03-03'], ['Adams', '1797-03-03', '1801-03-03']]"></timeline>


	<!-- INICIO SECCION EXPERIMENTAL DE CARRUSEL -->
	<section>
		<!-- swiper -->
		
		<swiper :options="swiperOption">
			<swiper-slide><img src="https://i.pinimg.com/originals/1b/34/ab/1b34aba797c813df0247df2c00fd2666.jpg"></swiper-slide>
			<swiper-slide><img src="http://carwallpaperhd.info/wp-content/uploads/2018/03/nissan-car-loan-luxury-best-new-car-offers-of-nissan-car-loan.jpg"></swiper-slide>
			<swiper-slide><img src="http://www.modihyundai.com/images/offers/offer-1.jpg"></swiper-slide>
			<div class="swiper-pagination" slot="pagination"></div>
			<div class="swiper-button-prev" slot="button-prev"></div>
			<div class="swiper-button-next" slot="button-next"></div>
		</swiper>
		
	</section>


	<!-- FIN SECCION EXPERIMENTAL DE CARRUSEL -->


	<!-- Banner -->
	<!--
	<section id="banner">
		
		<div class="inner">
			
			<h2>ALELUYA</h2>
			<p style="color: white;">Su mejor opción para buscar mudanzas, fletes y mecánicos <a href="ht
			tp://templated.co"></a></p>
			<ul class="actions">
				
				<div v-if="auth == null" >
					<li><router-link to="/register" class="button big special">Registrarse</router-link></li>
					<li><router-link to="/login" class="button big btn-success">Publique ya su anuncio</router-link></li>
				</div>
				<li v-else ><router-link to="/servicios/create" class="button big btn-success">Publique ya su anuncio</router-link></li>
			
			</ul>
		</div>
	</section>
	-->


	<!-- Two -->
	<section id="two" class="wrapper style1">
		<header class="major">
			<h2>Últimas publicaciones </h2><br>
			<p>No te pierdas ningún anuncio</p>
		</header>
		<div class="container">
			<!-- AQUI INICIA EL CONTENIDO -->
			<div class="row">
				<div class="3u" v-for="servicio in servicios.servicios">
					<section class="special">
						<a href="" class="image fit"><img :src="servicio.foto" alt="" ></a>
						<h3>{{servicio.titulo}}</h3>
						<p>$ {{servicio.precio_serv}}</p>
					</section>
				</div>
			</div>
			<!-- AQUI TERMINA EL CONTENIDO -->
		</div>
		
	</section>

	<!-- One -->
	<section id="one" class="wrapper style2">
		<header class="major">
			<h2>¿Por qué escoger nuestros servicios de anuncios?</h2><br>
			<p>Aquí te contamos algunos de los beneficios que tenemos para ti</p>
		</header>
		<div class="container">
			<div class="row">
				<div class="4u">
					<section class="special box">
						<i class="icon fa-area-chart major"></i>
						<h3>Económico</h3>
						<p>Contamos con los precios más bajos del mercado. Haz la prueba y publica tu anuncio ya.</p>
					</section>
				</div>
				<div class="4u">
					<section class="special box">
						<i class="icon fa-refresh major"></i>
						<h3>Actualizado</h3>
						<p>Contamos con la última tecnología para que tu anuncio sea facil de encontrar.</p>
					</section>
				</div>
				<div class="4u">
					<section class="special box">
						<i class="icon fa-cog major"></i>
						<h3>Personalizado</h3>
						<p>Contamos con varias opciones de personalización para la busqueda de anuncios.</p>
					</section>
				</div>

			</div>
		</div>
	</section>
</div>
</template>
		

<script>

	import { swiper, swiperSlide } from 'vue-awesome-swiper'
	import Vue from 'vue'
	import VueChartkick from 'vue-chartkick'

	Vue.use(VueChartkick)

    export default {
		data() {
			return {
				swiperOption: {
					spaceBetween: 30,
					centeredSlides: true,
					autoplay: {
						delay: 2500,
						disableOnInteraction: false
					},
					pagination: {
						el: '.swiper-pagination',
						clickable: true
					},
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev'
					}
				}
			}
		},
    props: {
			auth: { type: Object | Array },
			servicios: { type: Object | Array }
    },
		components: {
				swiper,
				swiperSlide
		},
    methods: {
			cargaMapa: function() {
							
					google.charts.load('current', {
						'packages':['geochart'],
						// Note: you will need to get a mapsApiKey for your project.
						// See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
						'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
					});
					google.charts.setOnLoadCallback(drawRegionsMap);

					function drawRegionsMap() {
						var data = google.visualization.arrayToDataTable([
							['Country',   'Anuncios'],
							['Maule', 36], ['Tarapacá', 8], ['Magallanes', 12], ['Coquimbo', 24], ['Araucanía', 24],
							['Ñuble', 5],
						]);

						var options = {
							region: 'CL', // Africa
							displayMode: 'regions',
    					resolution: 'provinces',
							colorAxis: {colors: ['#00853f', 'black', '#e31b23']},
							backgroundColor: '#81d4fa',
							datalessRegionColor: '#f8bbd0',
							defaultColor: '#f5f5f5',
						};

						var chart = new google.visualization.GeoChart(document.getElementById('geochart-colors'));
						chart.draw(data, options);
					};
			},
		},
		mounted() {
				//console.log('Main Component ready.')
				this.cargaMapa();
		}
        
    }
</script>



<style lang="scss" scoped>
  .swiper-container {
    background-color: #000;
  }
  .swiper-slide {
    background-size: cover;
    background-position: center;
    &.slide-1 {
      background-image:url('/static/images/surmon-1.jpg');
    }
    &.slide-2 {
      background-image:url('/static/images/surmon-6.jpg');
    }
    &.slide-3 {
      background-image:url('/static/images/surmon-8.jpg');
    }
    &.slide-4 {
      background-image:url('/static/images/surmon-9.jpg');
    }
    &.slide-5 {
      background-image:url('/static/images/surmon-10.jpg');
    }
  }
  .gallery-top {
    height: 80%!important;
    width: 100%;
  }
  .gallery-thumbs {
    height: 20%!important;
    box-sizing: border-box;
    padding: 10px 0;
  }
  .gallery-thumbs .swiper-slide {
    width: 25%;
    height: 100%;
    opacity: 0.4;
  }
  .gallery-thumbs .swiper-slide-active {
    opacity: 1;
  }
</style>