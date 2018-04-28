<template>
    <div>
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
                            <li><a href="/usuarios/gestion">Gestion</a></li>
                            <li><a href="/usuarios/adm_categorias">Administrar categorías</a></li>
                            <li><router-link to="/listausuarios">Lista Usuarios</router-link></li>
                            <li><a href="/usuarios/create">Crear Usuarios</a></li>
                            <li class="divider"></li>
                            <li><a href="/logout">Salir</a></li>
                          </ul>
                           <ul v-if="auth.tipo == 'secretaria'" class="dropdown-menu">
                            <li><router-link to="/anuncios">Anuncios</router-link></li>
                            <li><a href="/usuarios">Lista Usuarios</a></li>
                            <li class="divider"></li>
                            <li><a href="/logout">Salir</a></li>
                          </ul>
                           <ul v-if="auth.tipo== 'cliente'" class="dropdown-menu">
                            <li><a href="/mis_anuncios">Mis anuncios</a></li>
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
        methods: {
		},
        mounted() {
            console.log('Nav Component ready.')
        }
        
    }
</script>