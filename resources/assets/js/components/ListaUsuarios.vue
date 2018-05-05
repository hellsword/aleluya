<template>
	<div class="6u">
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
                    <td><a href="#" class="btn btn-danger btn-sm" v-on:click.prevent="deleteusuario(usuario)">Eliminar</a></td>
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
            }
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
                axios.get(urlKeeps).then(response => {
                    this.usuarios = response.data.usuarios.data,
                    this.pagination = response.data.pagination
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