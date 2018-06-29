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
                    <a href="#" class="btn btn-danger btn-sm" v-on:click.prevent="edit_anuncio(anuncio) ">Actualizar Anuncio</a>
                    </td>
                </tr>
            </table>
    </div>
    <section>


    <b-modal :active.sync="modal_actualiza">
        <form v-on:submit.prevent="update_anuncio">
            <div class="modal-card" style="width: auto">
                <header class="modal-card-head">
                    <p class="modal-card-title">Editar anuncio</p>
                </header>
                <section class="modal-card-body">
                    <b-field label="Titulo">
                        <b-input
                            type="text"
                            v-model = "titulo"
                            placeholder="Your titulo"
                            required>
                        </b-input>
                    </b-field>

                    <b-field label="Descripcion">
                        <p>
            <span class="field"> 
                <ckeditor v-model="descripcion" :height="'300px'" :toolbar="[['Format']]"></ckeditor>
            </span> 
            </p>
                    </b-field>

                </section>
                <footer class="modal-card-foot">
                    <button class="button" type="button" @click="modal_actualiza = false">Cancelar</button>
                    <button class="button is-primary" type="submit" >Aceptar</button>
                </footer>
            </div>
        </form>
    </b-modal>

    </section>	
</div>        
</template>

<script>

import Ckeditor from './Ckeditor.vue'

import axios from 'axios';

export default {
   
    data: function() {
            return {
                modal_actualiza: false,
                val: 2,
                servicios : [],
				errors: [],   
                id_anuncio: '',
                titulo: '',
                descripcion: ''                      
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
                this.id_anuncio = anuncio.id_anuncio;
                this.titulo = anuncio.titulo;
                this.descripcion= anuncio.descripcion;
                this.modal_actualiza = true;
            },
            update_anuncio: function(){
                axios.defaults.headers.post['Content-Type'] = 'multipart/form-data';

                var url = 'update_anunciospen';
                axios.post(url, {
                    id_anuncio: this.id_anuncio,
                    titulo: this.titulo,
                    descripcion: this.descripcion,
                }).then(response => {
                    this.id_anuncio = '',
                    this.descripcion = '',
                    this.titulo = '',
                    this.errors = [];
                    this.modal_actualiza = false;
                    this.getAnuncios()
                    toastr.success('Tarea actualizada con éxito');
                }).catch(error => {
                    this.errors = 'Corrija para poder editar con éxito'
                });
            },            
        },
        components: { 
            Ckeditor,
        },
        mounted() {
            this.getAnuncios()
        }
        
    }
</script>
