<template>
	<div class="6u">

        <b-field>
            <b-select v-model="tipo">
                <option selected value="">Todos</option>
                <option value="cliente">Cliente</option>
                <option value="secretaria">Secretaria</option>
                <option value="admin">Administrador</option>
            </b-select>
            <p class="control">
                <button class="button is-primary"  v-on:click="getUsuarios()">Filtrar</button>
            </p>
        </b-field>

	    <div class="row">
		    <div class = "col-lg-8 col-md-8 col-sm-8 col-xs-12">
			    <h3>Lista de Usuarios del Sistema</h3>
		    </div>	
	    </div>
        <div class="">
            <table class="table table-striped table-bordered table-condensed table-hover">
                <thead>
                    <th>ID</th>
                    <th>RUT</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </thead>
                <tr v-for="usuario in usuarios"> 
                    <td>{{usuario.id}}</td>
                    <td>{{usuario.rut}}</td>
                    <td>{{usuario.nombre}}</td>
                    <td>{{usuario.apellido}}</td>
                    <td>{{usuario.email}}</td>
                    <td v-if="auth.tipo == 'admin'" >
                        <span v-if="usuario.estado == 'activo'" style="color: green;">Activo</span> 
                        <span v-if="usuario.estado == 'inactivo'" style="color: red;">Inactivo</span> 
                        <a href="#" class="btn btn-danger btn-sm" v-on:click.prevent="Actualiza_usuario(usuario.id)">Actualizar estado</a>
                    </td>
                </tr>
            </table>

            <nav>
                <ul class="pagination">
                    <li v-if="pagination.current_page > 1">
                        <a href="#" @click.prevent="changePage(pagination.current_page - 1)">
                            <span><</span>
                        </a>
                    </li>

                    <li v-for="page in pagesNumber" v-bind:class="[ page == isActive ? 'active' : '']">
                        <a href="#" @click.prevent="changePage(page)">
                            {{page}}
                        </a>
                    </li>
                    
                    <li v-if="pagination.current_page < pagination.last_page">
                        <a href="#" @click.prevent="changePage(pagination.current_page + 1)">
                            <span>></span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</template>

<script>
    import axios from 'axios';
    export default {
        data: function() {
            return {
                usuarios : [],
                pagination: {
                    'total':0,
                    'current_page':0,
                    'per_page':0,
                    'last_page':0,
                    'from':0,
                    'to':0
                },
                offset: 3,     
                tipo: ''  ,    
            }
        },
        props: {
            auth: { type: Object | Array },
        },
        computed:{
            isActive: function(){
                return this.pagination.current_page;

            },
            pagesNumber: function(){
                if(!this.pagination.to){
                    return [];

                }
                var from = this.pagination.current_page- this.offset; 
                if(from <1){
                    from = 1;

                }

                var to = from + (this.offset*2);
                if(to >= this.pagination.last_page){
                    to = this.pagination.last_page;

                }

                var pagesArray = [];
                while(from <= to){
                    pagesArray.push(from);
                    from++;

                }
                return pagesArray;

            }
        },
        methods: {
            getUsuarios: function(page) {
                    
                var urlKeeps = 'usuarios?page='+page;
                axios.get(urlKeeps, {
                params: {
                    parametro_tipo: this.tipo
                },}).then(response => {
                    this.usuarios = response.data.usuarios.data,
                    this.pagination = response.data.pagination
                });
            },
            Actualiza_usuario: function(id) {
                //console.log("\n id de secretaria: "+this.auth.id+"\n");
                var url = 'actualiza_usuario';
                axios.post(url, {
                	id_usuario: id
                }).then(response => {
                    this.errors = [];
                    this.getUsuarios()
                	toastr.success('Usuario actualizado');
                }).catch(error => {
                    this.errors = 'Ha ocurrido un error';
                });
            },
            changePage: function(page){
                this.pagination.current_page = page;
                this.getUsuarios(page);

            },
            deleteusuario: function(usuario){

                var url = 'usuarios/' + usuario.id;
                //alert(url);
                axios.delete(url).then(response => {
                    toastr.success('Usuario eliminado correctamente');
                    this.getUsuarios();            
                });
            
            }
        },
        mounted() {
            this.getUsuarios()
        }
    }
</script>