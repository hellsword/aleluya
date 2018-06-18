<template>
    <div class="3u">
        <section>
            <h3>¿Qué buscas?</h3>
            <!--  AQUI IBA EL FORMULARIO PARA LA BUSQUEDA -->
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" name="searchText" placeholder="Ingrese lo que busca..." >
                    
                    <br><br><a href="#" class="btn btn-primary" v-on:click.prevent="Buscar()">Buscar</a>

                </div>
            </div>
            
            <h5>Personalice su busqueda por: </h5>
            <h6>Categorias</h6>  
            <select class="form-control" id="categoria" name="categoria" v-on:click="selectCategory(filtros.sub_categorias)">
                <option v-for="categoria in filtros.categorias" :value=categoria.id_categoria>{{categoria.nombre_completo}}</option>
            </select> 
            <h6>Sub Categorias</h6>
            <select class="form-control" id="sub_categoria" name="sub_categoria" v-model="sub_categoria">
                <option value="" >-</option>
            </select> 
            <h6>Vehiculos</h6>
            <select class="form-control" id="categoria_vehiculo" name="vehiculo" v-model="vehiculo">
                <option value="" >Todos</option>
                <option v-for="categoria_vehiculo in filtros.categoria_vehiculos" :value=categoria_vehiculo.nombre >{{categoria_vehiculo.nombre}}</option>
            </select> <br>

            <h6>Lugar</h6>
            <select class="form-control" id="region" name="region" v-on:click="selectProvincia(filtros.provincias)" v-model="region">
                <option value="" >Todos</option>
                <option v-for="region in filtros.regiones" :value=region.REGION_ID >{{region.REGION_NOMBRE}}</option>
            </select> <br>
            <select class="form-control" id="provincia" name="provincia" v-on:click="selectComuna(filtros.comunas)" v-model="provincia">
                <option value="" >-</option>
            </select> <br>
            <select class="form-control" id="comuna" name="comuna" v-model="comuna">
                <option value="" >-</option>
            </select> 
            
        </section>
        <hr />
    </div>
</template>



<script>


    export default {
        props: {
            filtros: { type: Object | Array },
        },
        data: function() {
            return {
                vehiculo: '',
                sub_categoria: '',
                region: '',
                provincia: '',
                comuna: ''
            }
        },
        methods: {
            Buscar: function() {
                console.log("Buscando..... ")
                var urlKeeps = 'appServicios';
                axios.get(urlKeeps, {
                params: {
                    vehiculo: this.vehiculo,
                    sub_categoria: this.sub_categoria,
                    region: this.region,
                    provincia: this.provincia,
                    comuna: this.comuna
                },}).then(response => {
                    this.servicios = response.data
                });
            },
            selectCategory: function(sub_categorias) {
                
                this.vehiculo = '';
                var seleccion = parseInt($( "select#categoria" ).val());
                var count = Object.keys(sub_categorias).length;

                var str =   '<option value="" >Todos</option>';

                for (var i = 0; i < count; i++) {
                    if (sub_categorias[i].id_categoria == seleccion) {
                        str = str+'<option value="'+sub_categorias[i].id_categoria+'" >'+sub_categorias[i].nombre_completo+'</option>';
                    }
                }

                //Elimina y genera nuevas opciones para el select
                $('#sub_categoria')
                    .find('option')
                    .remove()
                    .end()
                    .append(str)
                ;
            },
            selectProvincia: function(provincias) {
                var seleccion = parseInt($( "select#region" ).val());
                var count = Object.keys(provincias).length;

                var str =   '<option value="" >Todos</option>';

                for (var i = 0; i < count; i++) {
                    if (provincias[i].PROVINCIA_REGION_ID == seleccion) {
                        str = str+'<option value="'+provincias[i].PROVINCIA_ID+'" >'+provincias[i].PROVINCIA_NOMBRE+'</option>';
                    }
                }

                //Elimina y genera nuevas opciones para el select
                $('#provincia')
                    .find('option')
                    .remove()
                    .end()
                    .append(str)
                ;
            },
            selectComuna: function(comunas) {
                
                var seleccion = parseInt($( "select#provincia" ).val());
                var count = Object.keys(comunas).length;

                var str =   '<option value="" >Todos</option>';

                for (var i = 0; i < count; i++) {
                    if (comunas[i].COMUNA_PROVINCIA_ID == seleccion) {
                        str = str+'<option value="'+comunas[i].COMUNA_ID+'" >'+comunas[i].COMUNA_NOMBRE+'</option>';
                    }
                }

                //Elimina y genera nuevas opciones para el select
                $('#comuna')
                    .find('option')
                    .remove()
                    .end()
                    .append(str)
                ;
            }
        },
        mounted() {
            //console.log('AsideSearch Component ready.')
        }
        
    }
    
</script>
