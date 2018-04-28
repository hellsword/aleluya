<template>
<div class="9u pull-right">
    <div class="row">
		<div class = "col-lg-8 col-md-8 col-sm-8 col-xs-12">
			<h3>Lista de Anuncios del Sistema</h3>
		</div>	
	</div>

	<div class="table-responsive">
		<table class="table table-striped table-bordered table-condensed table-hover">
			<thead>
				<th>ID</th>
				<th></th>
				<th>Titulo</th>
				<th></th>
			</thead>
			<tr v-for="anuncio in anuncios.anuncios">
				
				<td>{{anuncio.id_anuncio}}</td>
				<td><router-link  :to="{path:'/servicios/ver_anuncio', query: {idAnuncio: anuncio.id_anuncio}}" > <img :src="anuncio.foto" alt="" height="150" width="200" > </router-link></td>
				<td>{{anuncio.titulo}}</td>
			
				<td>
					<div v-if="anuncio.forma_pago == '2'">
						<form method="post" class="stdform" autocomplete="off" v-on:submit.prevent="VerCupon">
							<input type="" name="id_secretaria" :value=anuncio.id_anuncio hidden>
							<input type="" name="id_anuncio" :value=anuncio.id_anuncio  hidden>
							<br><font size=4 color="#00FFFF" face="Comic Sans MS,arial,verdana">Pagado</font>
							<button class="boton azul" type="submit">Cupon</button>
						</form>
						<form method="post" class="stdform" autocomplete="off" v-on:submit.prevent="updateAnuncios(anuncio.id_anuncio)">
							<input type="" name="id_anuncio" :value=anuncio.id_anuncio hidden>
							<button class="boton verde" type="submit">Aceptar</button>
						</form>
					</div>

					<div v-if="anuncio.forma_pago == '0'">
						<br><font size=4 color="#00FFFF" face="Comic Sans MS,arial,verdana">Pagado</font>
						<form method="post" class="stdform" autocomplete="off" v-on:submit.prevent="updateAnuncios(anuncio.id_anuncio)">
							<input type="" name="id_anuncio" :value=anuncio.id_anuncio hidden>
							<button class="boton verde" type="submit">Aceptar</button>
						</form>
					</div>

					<div v-else>
						<br><font size=4 color="red" face="Comic Sans MS,arial,verdana">Pendiente</font>
						<form method="post" class="stdform" autocomplete="off" v-on:submit.prevent="updateAnuncios(anuncio.id_anuncio)">
							<input type="" name="id_anuncio" :value=anuncio.id_anuncio hidden>
							<button class="boton verde" type="submit">Aceptar</button>
						</form>
					</div>

				</td>
			</tr>
		</table>
	</div>
</div>
</template>
		

<script>
	import axios from 'axios'

    export default {
		data () {
            return {
				anuncios: [],
				errors: [],
			}
		},
        props: {
        },
        methods: {
			getAnuncios: function() {
				var urlKeeps = 'appAnuncios';
				axios.get(urlKeeps).then(response => {
					this.anuncios = response.data
				});
			},
			updateAnuncios: function(id_anuncio) {
				console.log(id_anuncio)
                var url = 'appAnuncios/' + id_anuncio;
                axios.put(url).then(response => {
					this.errors = [];
					toastr.success('Anuncio aceptado.');
				}).catch(error => {
					this.errors = error.response.data;
				});
            }
		},
        mounted() {
			this.getAnuncios();
			//console.log('Main Component ready.')
        }
        
    }
</script>


<style>
	.boton{
		text-align:center;
		text-decoration: none;
		font-family: 'Helvetica Neue', Helvetica, sans-serif;
		display:inline-block;
		color: #FFF;
		background: #7F8C8D;
		padding: 5px 10px;
		white-space: nowrap;
		-webkit-border-radius: 5px;
		-moz-border-radius: 5px;
		border-radius: 5px;
		margin: 10px 5px;
		-webkit-transition: all 0.2s ease-in-out;
		-ms-transition: all 0.2s ease-in-out;
		-moz-transition: all 0.2s ease-in-out;
		-o-transition: all 0.2s ease-in-out;
		transition: all 0.2s ease-in-out;
	}
		
	.azul{
	background: #3498DB;
	}

	.azul:hover{
	background: #2980B9;
	}

	.verde{
	background: #2ECC71;
	}

	.verde:hover{
	background: #27AE60;
	}

	.rojo{
	background: #E74C3C;
	}

	.rojo:hover{
	background: #C0392B;
	}

	.naranja{
	background: #E67E22;
	}

	.naranja:hover{
	background: #D35400;
	}

	#toast-container > .toast {
    background-image: none !important;
}

#toast-container > .toast:before {
    position: fixed;
    font-family: FontAwesome;
    font-size: 24px;
    line-height: 18px;
    float: left;
    color: #FFF;
    padding-right: 0.5em;
    margin: auto 0.5em auto -1.5em;
}        
#toast-container > .toast-warning:before {
    content: "\f003";
}
#toast-container > .toast-error:before {
    content: "\f001";
}
#toast-container > .toast-info:before {
    content: "\f005";
}
#toast-container > .toast-success:before {
    content: "\f005";
}
</style>
