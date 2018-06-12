<template>
<div>
	
    <h3>Administración de categorías: </h3>

    <br>
    <h5>Nueva Sub-categoría</h5>
    <form method="post" class="stdform stdform2" style="width: 60%; text-align: left" v-on:submit.prevent="Register">
    
    <b-field grouped>
        <b-field label="Categoria">
            <b-select placeholder="Seleccione una categoría" id="" name="id_categoria" required="">
                <option v-for="categoria in categorias.categorias" :value=categoria.id_categoria >{{categoria.nombre_completo}}</option>
            </b-select>
        </b-field> 
        <b-field label="Nombre clave sub-categoría " expanded>
            <b-input name="sub_categoria"></b-input>
        </b-field>
        <b-field label="Nombre completo sub-categoría" expanded>
            <b-input name="nombre_completo"></b-input>
        </b-field>
    </b-field>  
    <button type="submit" class="w3-button w3-circle w3-teal w3-card-4" >+</button>
    </form>
    <br>
    

    

    

</div>
</template>
		

<script>

    export default {
		data() {
			return {
				categorias: []
			}
		},
        props: {
            auth: { type: Object | Array },
        },
        methods: {
            getCategorias: function() {
                var url = 'adm_categorias';
                axios.get(url).then(response => {
                    this.categorias = response.data
                });
            },
		},
		mounted() {
            this.getCategorias();
				//console.log('Main Component ready.')
		}
        
    }
</script>


