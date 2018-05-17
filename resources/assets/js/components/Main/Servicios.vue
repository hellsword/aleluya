<template>
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
                        <a href="#" style="text-decoration:none" ><h3 style="color:#00BFFF;">{{servicio.titulo}}</h3></a>
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
</template>



<script>
    export default {
        data: function() {
            return {
                val: 2,
                servicios: []
            }
        },
        props: {
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
                var urlKeeps = 'appServicios';
                axios.get(urlKeeps).then(response => {
                    this.servicios = response.data
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