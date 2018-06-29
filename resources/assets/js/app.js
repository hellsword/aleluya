//Archivo de RUTAS

require('./bootstrap');

import Vue from 'vue';
import VueRouter from 'vue-router';
import axios from 'axios'
import Meta from 'vue-meta'
import VueFormWizard from 'vue-form-wizard'

//const servicios = []

Vue.use(VueRouter)
Vue.use(Meta)
Vue.use(VueFormWizard)
window.axios = require('axios');

// 1. Define componentes de enrutamiento.
// Estos pueden ser importados desde otros archivos
//const Foo = { props: ['servicios'], template: '<div>foo {{servicios}} </div>' }
//const Bar = { template: '<div>bar</div>' }


// lazy load components
// Aqui se importan los componentes
import Nav from './components/Nav.vue'
import Main from './components/Main.vue'
//import Aside from './components/Aside/AsideSearch.vue'
import Servicios from './components/Main/Servicios.vue'
import Login from './components/Auth/Login.vue'
import Register from './components/Auth/Register.vue'
import NuevoServicio from './components/NuevoServicio/NuevoServicio.vue'
import VerAnuncio from './components/VerAnuncio.vue'
import Anuncios from './components/Secretaria/Anuncios.vue'
import AsideSecretaria from './components/Aside/AsideSecretaria.vue'
import ListaUsuarios from './components/ListaUsuarios.vue'
import AgregarPalabra from './components/Diccionario/AgregarPalabra.vue'
import Gestion from './components/Admin/Gestion.vue'
import AdminCategorias from './components/Admin/AdminCategorias.vue'
import Anuncio_P from './components/Anuncio_P.vue'
//import Diccionario from './components/Diccionario/Diccionario.vue'

// 2. Define algunas rutas
// Cada ruta debe mapear a un componente. El "componente" puede
// ser un constructor de componente creado a través de
// Vue.extend(), o simplemente un objeto de opciones de componente.
// Más tarde hablaremos acerca de las sub-rutas.



const routes = [
    {
        path: '/',
        components: {
            nav: Nav,
            main: Main
        }
    },
    {
        path: '/mis_anuncios',
        components: {
            nav: Nav,
            //aside_search: Aside,
            servicios: Servicios
        }
    },
    {
        path: '/servicios',
        components: {
            nav: Nav,
            //aside_search: Aside,
            servicios: Servicios
        }
    },
    {
        path: '/login',
        components: {
            login: Login
        }
    },
    {
        path: '/register',
        components: {
            register: Register
        }
    },
    {
        path: '/servicios/create',
        components: {
            nav: Nav,
            nuevo_servicio: NuevoServicio
        }
    },
    {
        path: '/servicios/ver_anuncio',
        components: {
            nav: Nav,
            verAnuncio: VerAnuncio
        },
        props: true
    },
    {
        path: '/anuncios',
        components: {
            nav: Nav,
            aside_secretaria: AsideSecretaria,
            anuncios: Anuncios
        }
    },
    {
        path: '/listausuarios',
        components: {
            nav: Nav,
            listausuarios: ListaUsuarios
        }
    },
    {
        path: '/agregarpalabra',
        components: {
            nav: Nav,
            agregarpalabra: AgregarPalabra

        }
    },
    {
        path: '/gestion2',
        components: {
            nav: Nav,
            gestion: Gestion
        }
    },
    {
        path: '/admin_categorias',
        components: {
            nav: Nav,
            adm_categorias: AdminCategorias
        }
    },
    {
        path: '/anuncio_p',
        components: {
            nav: Nav,
            anuncio_p: Anuncio_P
        }
    },

  ]



// 3. Crea una instancia del _router_ y pasa la opción `routes`
// Puedes pasar opciones adicionales aquí,
// pero mantengámoslo simple por el momento.
const router = new VueRouter({
  mode: 'history',
  base: __dirname,
  routes // forma corta para routes: routes
})

// 4. Crea y monta la instancia principal.
// Asegúrate de inyectar el _router_ con la opcion router para
// garantizar que toda la aplicación tenga acceso al mismo.


const app = new Vue({
    router,
    created: function() {
        this.getServicios(),
        this.getFiltros(),
        this.getUltimosServicios()
    },
    data: {
        servicios: [],
        filtros: [],
        ultimosServicios: []
    },
    methods: {
        getUltimosServicios: function() {
            var urlKeeps = 'appUltimosServicios';
            axios.get(urlKeeps).then(response => {
                this.ultimosServicios = response.data
            });
        },
        getServicios: function() {
            var urlKeeps = 'appServicios';
            axios.get(urlKeeps).then(response => {
                this.servicios = response.data
            });
        },
        getFiltros: function() {
            var urlKeeps = 'appFiltros';
            axios.get(urlKeeps).then(response => {
                this.filtros = response.data
            });
        },
        getPath: function() {
            return this.$route.path
        }
    }
}).$mount('#app')

// ¡Ahora la aplicación está ejecutándose!

