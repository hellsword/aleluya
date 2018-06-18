<template>
    <div>
        <div v-if="auth">
            {{getSecretaria()}}
        </div>
        <nav class="navbar is-info">
            <div class="navbar-brand">
                <a class="navbar-item" href="https://bulma.io">
                <img src="images/logo.png" alt="Bulma: a modern CSS framework based on Flexbox" width="112" height="28">
                </a>
                <div class="navbar-burger burger" data-target="navbarExampleTransparentExample">
                <span></span>
                <span></span>
                <span></span>
                </div>
            </div>

            <div id="navbarExampleTransparentExample" class="navbar-menu">
                <div class="navbar-start">
                    <p style="color: white;">Su mejor opción para buscar mudanzas, fletes y mecánicos </p>
                </div>

                <div class="navbar-end">
                <ul class="nav navbar-nav navbar-right" >
                    <li>
                        <router-link to="/">
                            <i class="pe-7s-home">
                            </i>
                            <p>Home</p>
                        </router-link>
                    </li> 
                    <li>
                        <router-link to="/servicios">
                            <i class="pe-7s-portfolio">
                            </i>
                            <p>Servicios</p>
                        </router-link>
                    </li> 
                    
                    <li v-if="auth != null && auth.tipo  == 'cliente'">
                        <router-link v-if="auth != null" to="/servicios/create">
                            <i class="pe-7s-note2">
                            </i>
                            <p>Publique su aviso</p>
                        </router-link>
                        <router-link to="/login" v-if="auth == null"></router-link>

                    </li> 
                    
                    <li v-if="auth != null" class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="pe-7s-user"></i>
                                <p>{{ auth.nombre }}</p>
                            </a>
                        <ul v-if="auth.tipo == 'admin'" class="dropdown-menu">
                            <li><router-link to="/gestion2">Gestion</router-link></li>
                            <li><router-link to="/admin_categorias">Administrar categorías</router-link></li>
                            <li><router-link to="/listausuarios">Lista Usuarios</router-link></li>
                            <!-- <li><a href="/usuarios/create">Crear Usuarios</a></li>  -->
                            <li><router-link to="/agregarpalabra">Agregar palabra al diccionario</router-link></li>
                            <li class="divider"></li>
                            <li><a href="/logout">Salir</a></li>
                          </ul>
                           <ul v-if="auth.tipo == 'secretaria'" class="dropdown-menu">
                            <li>&nbsp;&nbsp; <button style="background-color: transparent; border: none; text-align: center;" v-on:click="Actualiza_secretaria" > 
                                <span v-if="secre.auth">
                                    <span v-if="secre.auth.estado == 'activo'" style="color: green;">Activo</span> 
                                    <span v-if="secre.auth.estado == 'inactivo'" style="color: red;">Inactivo</span> 
                                </span>
                            </button> </li>
                            <li><router-link to="/anuncios">Anuncios</router-link></li>
                            <li><router-link to="/listausuarios">Lista Usuarios</router-link></li>
                            <li class="divider"></li>
                            <li><a href="/logout">Salir</a></li>
                          </ul>
                           <ul v-if="auth.tipo== 'cliente'" class="dropdown-menu">
                            <li> <router-link to="/mis_anuncios">Mis Anuncios</router-link> </li>
                            <li><a href="/favoritos">Favoritos</a></li>
                            <li><a href="/cupones">Subir Cupón</a></li>
                            <li class="divider"></li>
                            <li><a href="/logout">Salir</a></li>
                          </ul>
                    </li>
                    <li v-if="auth == null" ><router-link to="/register" class="button special">Registrarse</router-link></li>
                    <li v-if="auth == null" ><router-link to="/login" class="button special">Iniciar sesión</router-link></li>

                    <!-- Tabulacion -->
                    <li> &nbsp;&nbsp;&nbsp; </li>
                 </ul>
                </div>
            </div>
        </nav>
    </div> <!-- end menu-dropdown -->
</template>


<script>

    import Vue from 'vue';
	import Buefy from 'buefy'

    Vue.use(Buefy)

    export default {
        props: {
            auth: { type: Object | Array },
        },
        data: function() {
            return {
                secre : [],
            }
        },
        methods: {
            getSecretaria: function() {
                var urlKeeps = 'obtenerSecretaria';
                axios.get(urlKeeps).then(response => {
                    this.secre = response.data;
                    //this.cargaGrafico(this.datos.region);
                    //revisa si existe registro en el array 
                });
            },
            Actualiza_secretaria: function() {
                //console.log("\n id de secretaria: "+this.auth.id+"\n");
                var url = 'actualiza_usuario';
                axios.post(url, {
                    id_usuario: this.auth.id
                }).then(response => {
                	this.errors = [];
                	toastr.success('Secretaria actualizada');
                }).catch(error => {
                    this.errors = 'Ha ocurrido un error';
                });
            },
		},
        mounted() {
            console.log('Nav Component ready.')
        }
        
    }
</script>