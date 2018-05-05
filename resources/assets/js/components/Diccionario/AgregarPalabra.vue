<template>
    <div>
	    <section id="two" class="wrapper style1">
		    <header class="major">
                <h3>Agregar una nueva palabra al diccionario de palabras</h3>
            </header>
		    <div class="container" align="center">
			    <form method="post" class="stdform" style="width: 60%; text-align: left" v-on:submit.prevent="AgregarPalabra">
				    <div class="form-group">
                        Ingresar Palabra:<br>
                            <div class="col-md-12">
                                <input id="palabra" type="text" class="form-control" name="palabra" v-model="palabra" placeholder="Ej: marihuana" value="" required autofocus>
                            </div>
                    </div><br>

                    <div class="form-group">
                        <div class="row" >
                            <br>
                            <div class="6u" align="right"> 
                                <router-link to="/" class="w3-button w3-red w3-round-xxlarge">Cancelar</router-link>    
                            </div>
                            <div id="aceptar" class="6u" align="left"> 
                                <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="agregar al diccionario">
                            </div>
                            <br>
                        </div>
                    </div>
                </form>
            </div>

            <center><div class="6u">
		        <div class = "col-lg-8 col-md-8 col-sm-8 col-xs-12">
			        <center><h3>Diccionario</h3></center>

			        <table class="table table-striped table-bordered table-condensed table-hover">
                        <thead>
                        </thead>
                        <tr v-for="palab in dic"> 
                            <td>{{palab.palabra}}</td>
                            <td><a href="#" class="btn btn-danger btn-sm" v-on:click.prevent="deletepalabra(palab)">Eliminar</a></td>
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
	        </div></center>	
	    </section>
    </div>
</template>

<script>

	import axios from 'axios'


	export default {
        data: function() {
            return {
                errors: [],
                palabra:'',
                dic: [],

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
            AgregarPalabra: function() {
                var url = 'diccionario';
                axios.post(url, {
                	palabra: this.palabra
                }).then(response => {
                	this.palabra = '';
                	this.errors = [];
                	window.location.href = "/agregarpalabra";
                	toastr.success('Palabra ingresada correctamente');
                }).catch(error => {
                    this.errors = '	Ingreso erroneo';
                });
            },

            GetDiccionario: function(page) {
                    
                var urlKeeps = 'diccionario?page='+page;
                axios.get(urlKeeps).then(response => {
                    this.dic = response.data.dic.data,
                    this.pagination = response.data.pagination
                });
            },
            changePage: function(page){
                this.pagination.current_page = page;
                this.GetDiccionario(page);

            },
            deletepalabra: function(palab){

            	var url = 'diccionario/.' + palab.palabra;
            	//alert(url);
            	axios.delete(url).then(response => {
                     this.GetDiccionario();            
                });
            
            }
        },

        mounted() {
            //console.log('Register Component ready.')
            this.GetDiccionario()
        }
        
    }
</script>