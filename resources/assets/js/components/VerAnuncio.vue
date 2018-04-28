<template>
    <div class="container">
         {{getVal(servicios.servicio, servicios.favoritos)}}
        <div class="row">
            <div class="6u">
                <div v-if="servicios.imagenes">
                    <br /> <br /> <br />
                    <!-- swiper1 -->
                    <swiper :options="swiperOptionTop" class="gallery-top" ref="swiperTop">
                        <swiper-slide v-for="(slide, index) in servicios.imagenes" :key="index">
                            <img class="mySlides" :src="slide.foto" style="width:100%; height: 100%">
                        </swiper-slide>
                        <div class="swiper-button-next swiper-button-white" slot="button-next"></div>
                        <div class="swiper-button-prev swiper-button-white" slot="button-prev"></div>
                    </swiper>
                    <!-- swiper2 Thumbs -->
                    <swiper :options="swiperOptionThumbs" class="gallery-thumbs" ref="swiperThumbs">
                        <swiper-slide v-for="(slide, index) in servicios.imagenes" :key="index">
                            <img class="mySlides" :src="slide.foto" style="width:100%; height: 100%">
                        </swiper-slide>
                    </swiper>

                </div>
            </div>
            <div class="6u">
                <section class="special box">                
                    <div style="text-align: left">
                        <div v-if="servicios.servicio">
                            <h3>{{servicios.servicio.titulo}}</h3>
                        </div>
                        <div v-if="servicios.autor">
                            <h5 style="color: blue"> Autor: {{servicios.autor.nombre}} {{servicios.autor.apellido}}</h5>
                        </div>
                        <!-- Valoración: ★★★★★  -->
                        <div style="border-top: 1px solid silver;"></div><br>
                        <div v-if="servicios.servicio">
                            <h1 style="color: #DE5122">Precio: ${{servicios.servicio.precio_serv}}</h1><br>
                        </div>

                        <section style="background-color: #FAFAFA">
                            <div v-if="servicios.servicio">
                                <p>Tipo de servicio: {{servicios.servicio.tipo_servicio}}</p>
                            </div>
                            Lugar:
                            <div v-if="servicios.lugar">
                                <div style="border-top: 1px solid silver;"></div><br>
                                <p>&nbsp;&nbsp;&nbsp;Región: {{servicios.lugar.region}}</p>
                                <p>&nbsp;&nbsp;&nbsp;Provincia: {{servicios.lugar.provincia}}</p>
                                <p>&nbsp;&nbsp;&nbsp;Comuna: {{servicios.lugar.comuna}}</p>
                            </div>
                        </section>
                    </div>



                    <div class="4u">
                    <section>
                        <div v-if="val == 0">
                            <div v-if="auth != null">
                                <div v-if="auth.tipo == 'cliente'">
                                    <!-- Aqui va el formulario para añadir a favoritos -->
                                        <input type="" name="id_anuncio" :value=servicios.servicio.id_anuncio hidden>
                                        <a class="button"  >Añadir a favoritos</a>
                                    <!-- Aqui termina el formulario para añadir a favoritos -->
                                </div>
                            </div>
                            <a v-else href="login2" class="button ">Añadir a favoritos</a>
                        </div>
                        <a v-if="val == 1" class="button" style="text-decoration:line-through;">Añadir a favoritos</a>
                    </section>
                    </div>



                    <a href="javascript:;" class="w3-button w3-orange w3-round-xlarge"  v-on:click="mostrar()">Contactar anunciante</a>
                    
                    <ul id="lista_contacto" class="icons" style='display:none;' >
                        <li><a href="" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                            <div v-if="servicios.fono">
                        <li><a class="icon fa-phone"><span class="label">Instagram</span></a></li>  {{servicios.fono.contacto}}
                        </div>
                    </ul>
                
                </section>
            </div>

    
        <!-- PARTE INFERIOR DEL ANUNCIO -->
        <div class="container">
            <div class="row">
                <div class="3u">
                    <section class="special box">
                        <div v-if="servicios.tipo_servicio == 'mecanico' || servicios.tipo_servicio == 'otros_per'">
                            <div v-if="servicios.persona">
                                <h4>Datos de la persona:</h4><br>
                                <p>RUT: {{servicios.persona.rut}}</p>
                                <p>Nombre: {{servicios.persona.nombre}}</p>
                                <p>Apellido: {{servicios.persona.apellido}}</p>
                                <p>Profesión: {{servicios.persona.profesion}}</p>
                                <p>Años de experiencia: {{servicios.persona.años_experiencia}}</p>
                                <p>Curriculum: {{servicios.persona.curriculum}}</p>
                            </div>
                        </div>
                        <div v-if="servicios.tipo_servicio == 'arriendo' || servicios.tipo_servicio == 'transporte'">
                            <div v-if="servicios.vehiculo">
                                <h4>Datos del vehículo:</h4><br>
                                <p>Patente: {{servicios.vehiculo.patente}}</p>
                                <p>Categoría: {{servicios.vehiculo.nombre}}</p>
                                <p>Capacidad: {{servicios.vehiculo.capacidad}}</p>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="9u">
                    <section class="special box">
                        <div v-if="servicios.servicio" v-html="servicios.servicio.descripcion"> </div>
                    </section>
                </div>
            </div>
        </div>

        </div>
    </div>

</template>




<script>
    import axios from 'axios';

    import { swiper, swiperSlide } from 'vue-awesome-swiper'


    export default {

        data: function() {
            return {
                swiperOptionTop: {
                    spaceBetween: 10,
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev'
                    }
                },
                swiperOptionThumbs: {
                    spaceBetween: 10,
                    centeredSlides: true,
                    slidesPerView: 'auto',
                    touchRatio: 0.2,
                    slideToClickedSlide: true
                },
                servicios : [],
                val: 2,
            }
        },
        props: {
        
            auth: { type: Object | Array },
            ruta: String
        },
        components: {
            swiper,
            swiperSlide
        },
        methods: {
            getDetalle: function() {
                    
                var urlKeeps = '/detalleServicio/'+this.$route.query.idAnuncio;
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
            //FUNCION PARA MOSTRAR INFORMACION DE CONTACTO DEL ANUNCIANTE
            mostrar: function() {
                document.getElementById('lista_contacto').style.display = 'block';
            }
        },
        mounted() {
            console.log("ver_anuncio montado")
            console.log(this.$route.query.idAnuncio)
            this.getDetalle()

            /*
            this.$nextTick(() => {
                const swiperTop = this.$refs.swiperTop.swiper
                const swiperThumbs = this.$refs.swiperThumbs.swiper
                swiperTop.controller.control = swiperThumbs
                swiperThumbs.controller.control = swiperTop
            })
            */
        }
    }
</script>

<style lang="scss" scoped>
  .swiper-container {
    background-color: #000;
  }
  .swiper-slide {
    background-size: cover;
    background-position: center;
    &.slide-1 {
      background-image:url('/static/images/surmon-1.jpg');
    }
    &.slide-2 {
      background-image:url('/static/images/surmon-6.jpg');
    }
    &.slide-3 {
      background-image:url('/static/images/surmon-8.jpg');
    }
    &.slide-4 {
      background-image:url('/static/images/surmon-9.jpg');
    }
    &.slide-5 {
      background-image:url('/static/images/surmon-10.jpg');
    }
  }
  .gallery-top {
    height: 80%!important;
    width: 100%;
  }
  .gallery-thumbs {
    height: 20%!important;
    box-sizing: border-box;
    padding: 10px 0;
  }
  .gallery-thumbs .swiper-slide {
    width: 25%;
    height: 100%;
    opacity: 0.4;
  }
  .gallery-thumbs .swiper-slide-active {
    opacity: 1;
  }
</style>







