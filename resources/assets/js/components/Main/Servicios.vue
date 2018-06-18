<template>

<div align="center" >
<div style="text-align: left; width: 80%;" class="row">

    <div class="3u">
        <section>
            <h3>¿Qué buscas?</h3>
            <!--  AQUI IBA EL FORMULARIO PARA LA BUSQUEDA -->
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" name="searchText" placeholder="Ingrese lo que busca..." >
                    
                    <br><br><a href="#" class="btn btn-primary" v-on:click.prevent="getServicios()">Buscar</a>

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

    <div class="9u pull-right">
        
        <div v-for="servicio in servicios.servicios">
            {{getVal(servicio, servicios.favoritos)}}
            <hr>
            <div class="row" >
                <div class="4u" style="vertical-align: middle;">
                    <section>
                        <!-- AQUI DEBE IR EL ENLACE PARA MOSTRAR EL ANUNCIO -->
                        <router-link  :to="{path:'/servicios/ver_anuncio', query: {idAnuncio: servicio.id_anuncio}}" ><img :src="servicio.foto" alt="" height="150" width="200" ></router-link>

                    </section>
                </div>
                    
                <div class="8u">
                    <section>
                        <router-link  :to="{path:'/servicios/ver_anuncio', query: {idAnuncio: servicio.id_anuncio}}" style="text-decoration:none" ><h3 style="color:#00BFFF;">{{servicio.titulo}}</h3></router-link>
                    </section>
                </div>

                <div class="4u">
                    <section>
                        <div style="border-bottom: 1px solid silver;"></div>
                        Autor: {{servicio.nombre}} {{servicio.apellido}} <br>
                        <div style="border-bottom: 1px solid silver;"></div>
                        Servicio: {{servicio.tipo_servicio}} <br>
                        <div style="border-bottom: 1px solid silver;"></div>
                        Lugar: {{servicio.region}}, {{servicio.provincia}}, {{servicio.comuna}} <br>
                        <div style="border-bottom: 1px solid silver;"></div>
                        Creado el: {{servicio.fecha}}<br>
                        <div style="border-bottom: 1px solid silver;"></div>
                    </section>
                </div>

                <div class="4u">
                    <section>
                        <label style="color: #DE5122; font-size: 18px">$ {{servicio.precio_serv}}</label> <br>
                        <!--  Valoración: ★★★★★ <br>  -->
                        
                        <div v-if="val == 0">
                            <div v-if="auth != null">
                                <div v-if="auth.tipo == 'cliente'">

                                    <!-- Aqui va el formulario para añadir a favoritos -->
                                        <input type="" name="id_anuncio" :value=servicio.id_anuncio hidden>
                                        <a class="button"  >Añadir a favoritos</a>

                                    <!-- Aqui termina el formulario para añadir a favoritos -->
                                        
                                    
                                </div>
                            </div>
                            
                            <a v-else href="login2" class="button ">Añadir a favoritos</a>
                            
                        </div>
                        <a v-if="val == 1" class="button" style="text-decoration:line-through;">Añadir a favoritos</a>
                    
                        <div v-else>
                            <div v-if="val == 3">
                                <!-- Aqui va el formulario para eliminar anuncios -->
                                    <a ><btn class="btn btn-danger"><i class="fa fa-trash" style="font-size:20px;color:white"></i></btn></a>
                                <!-- Aqui termina el formulario para eliminar anuncios -->
                            </div>
                        </div>
                    </section>
                </div>

                <hr />
            </div>
        </div>
        <br><br>
    </div>

</div>
</div>
</template>



<script>
    export default {
        data: function() {
            return {
                val: 2,
                servicios: [],
                vehiculo: '',
                sub_categoria: '',
                region: '',
                provincia: '',
                comuna: ''
            }
        },
        props: {
            filtros: { type: Object | Array },
            auth: { type: Object | Array },
            ruta: String
        },
        methods: {
            getDatos(){
                if(this.ruta == '/mis_anuncios'){
                    this.servicios = [];
                    this.getMisAnuncios();
                }
                else if(this.ruta == '/servicios'){
                    this.servicios = [];
                    this.getServicios();
                }
            },
            getServicios: function() {
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
                    this.servicios = response.data,
                    this.vehiculo = '',
                    this.sub_categoria = '',
                    this.region = '',
                    this.provincia = '',
                    this.comuna = ''
                });
            },
            getMisAnuncios: function() {
                var urlKeeps = 'misAnuncios';
                axios.get(urlKeeps).then(response => {
                    this.servicios = response.data
                });
            },
            getVal: function(servicio, favoritos) {
                var valor = 2;
                if (this.ruta == '/servicios') {
                    valor = 0
                    if (this.auth != null) {
                        if(this.auth.id == servicio.id_cliente){
                            valor = 1
                        }
                        favoritos.forEach(favorito => {
                            if(servicio.id_anuncio == favorito.id_anuncio){
                                valor = 1
                            }
                        });
                   }
               }
                if(this.ruta == '/favoritos')
                    valor = 3
                this.val = valor;
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
        beforeMount: function () {
            if(this.ruta == '/mis_anuncios'){
                this.servicios = [];
                this.getMisAnuncios();
            }
            if(this.ruta == '/servicios'){
                this.servicios = [];
                this.getServicios();
            }
        },
        mounted() {
            //console.log('Servicios Component ready.')
            //console.log('ruta SERVICIOS: '+this.ruta)
            
                
        }
        
    }
    
</script>