<template>
<div>
    <div class="row">
	    <div class = "col-lg-8 col-md-8 col-sm-8 col-xs-12">
			<h3>Mis Anuncios Pendientes</h3>
		</div>
    </div>
    <div class="table-responsive">
		    <table class="table table-striped table-bordered table-condensed table-hover">
			    <thead>
				    <th>ID</th> 
				    <th>Titulo Del Anuncio</th>
			    </thead>
                <tr v-for="anuncio in servicios.anuncios">
                    <td>{{anuncio.id_anuncio}}</td>
				    <td>{{anuncio.titulo}}</td>
                    <td>
                    <a href="#" class="btn btn-danger btn-sm" v-on:click.prevent="edit_anuncio(anuncio)">Actualizar Anuncio</a>
                    </td>
                </tr>
            </table>
    </div>
    <section>

<form method="POST" v-on:submit.prevent="update_anuncio(fill_anuncio.id_anuncio)">
<div class="modal fade" id="edit">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span>×</span>
                </button>
                <h4>Editar</h4>
            </div>
            <div class="modal-body">
                <label for="anuncio">Actualizar Titulo</label>
                <input type="text" name="titulo" class="form-control" v-model="fill_anuncio.titulo">
                
            </div>

            <div class="modal-body">
                <label for="anuncio">Actualizar Descripcion</label>
                <input type="text" name="descripcion" class="form-control" v-model="fill_anuncio.descripcion">
                
            </div>

            <div class="modal-footer">
                <input type="submit" class="btn btn-primary" value="Actualizar">
            </div>
        </div>
    </div>
</div>
</form>

    </section>	
</div>        
</template>

<script>


import axios from 'axios';

export default {
   
    data: function() {
            return {
                val: 2,
                servicios : [],
				errors: [],
                fill_anuncio: {'id_anuncio': '','titulo': '','descripcion':''},                           
            }
        },
        props: {
            auth: { type: Object | Array },
			ruta: String,
		},
		
		
        methods: {
            getAnuncios: function() {
                    
                var urlKeeps = 'anunciospen';
                axios.get(urlKeeps).then(response => {
                    this.servicios = response.data
                });
			},

            edit_anuncio: function(anuncio) {
                this.fill_anuncio.id_anuncio = anuncio.id_anuncio;
                this.fill_anuncio.titulo = anuncio.titulo;
                this.fill_anuncio.descripcion= anuncio.descripcion;
                $('#edit').modal('show');
            },
            update_anuncio: function(id_anuncio){
                var url = 'anunciospen/' + id_anuncio;
                axios.put(url, this.fillKeep).then(response => {
                    this.getAnuncios();
                    this.fill_anuncio = {'id_anuncio': '', 'titulo': ''};
                    this.errors = [];
                    $('#edit').modal('hide');
                    toastr.success('Tarea actualizada con éxito');
                }).catch(error => {
                    this.errors = 'Corrija para poder editar con éxito'
                });
            },            
        },
        mounted() {
            this.getAnuncios()
        }
        
    }
</script>
