<template>
    <div class="3u">
        <section v-if="auth.tipo == 'admin'">
            <h3>Sección del administrador</h3>
            <p><a href="/usuarios" class="w3-button w3-green w3-round-xlarge">Lista de usuarios</a></p>
            <p><a href="/usuarios/create" class="w3-button w3-green w3-round-xlarge">Crear usuario</a></p>
            <p><a href="/usuarios/gestion" class="w3-button w3-green w3-round-xlarge">Gestión</a></p>
            <p><a href="/usuarios/adm_categorias" class="w3-button w3-green w3-round-xlarge">Administración de categorías</a></p>
        </section>

        <section v-if="auth.tipo == 'secretaria'">
            <h3>Sección de la secretaria</h3>
            <p><router-link class="w3-button w3-green w3-round-xlarge" to="/usuarios">Lista de usuarios</router-link></p>
            <p><router-link class="w3-button w3-green w3-round-xlarge" to="/anuncios">Anuncios</router-link></p>
        </section>  
    </div>
</template>
		

<script>
    import axios from 'axios'

    export default {
        props: {
            auth: { type: Object | Array }
        },
        methods: {
		},
        mounted() {
			//console.log('Main Component ready.')
        }
        
    }
</script>