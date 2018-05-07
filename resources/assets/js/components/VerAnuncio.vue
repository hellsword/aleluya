<template>
    <div class="container">
         {{getVal(servicios.servicio, servicios.favoritos)}}

        <div v-if="servicios.servicio">
            {{comienza_filtrado(servicios.servicio.titulo, servicios.servicio.descripcion)}}
        </div>

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
                            <h3> 
                                <div id="titulo"></div>
                            </h3>
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
                <div class="12u" v-if="servicios.servicio">
                    <section class="special box">
                        <div v-if="(servicios.servicio.tipo_servicio == 'mecanico' || servicios.servicio.tipo_servicio == 'otros_per')">
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
                        <div v-if="(servicios.servicio.tipo_servicio == 'arriendo' || servicios.servicio.tipo_servicio == 'transporte')">
                            <div v-if="servicios.vehiculo">
                                <h4>Datos del vehículo:</h4><br>
                                <p>Patente: {{servicios.vehiculo.patente}}</p>
                                <p>Categoría: {{servicios.vehiculo.nombre}}</p>
                                <p>Capacidad: {{servicios.vehiculo.capacidad}}</p>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="12u">
                    <section class="special box">
                        <div align="justify" id="descripcion"> </div>
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
                malas_palabras: []
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
            getPalabras: function() {
                    
                var urlKeeps = '/obtenerPalabras';
                axios.get(urlKeeps).then(response => {
                    this.malas_palabras = response.data
                });
            },
            getDetalle: function() {
                    
                var urlKeeps = '/detalleServicio/'+this.$route.query.idAnuncio;
                axios.get(urlKeeps).then(response => {
                    this.servicios = response.data
                    this.titulo = this.servicios.servicio.titulo;
                });

                return this.titulo;
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
            },
            comienza_filtrado: function(titulo, descripcion) {

                titulo = this.filtrar(titulo);
                document.getElementById('titulo').innerHTML = titulo; 

                descripcion = this.filtrar(descripcion);
                document.getElementById('descripcion').innerHTML = descripcion; 
            },
            filtrar: function(texto_no_filtrado) {
                
                // Filtra malas palabras en la texto_no_filtrado
                var arr = [];
                var n = 0;
                var restringidos=" !#$%&'()*+-.,/:;<=>?@[\]^_`{|}~ÇüéâäàåçêëèïîìÄÅÉæÆôöòûùÿÖÜø£Ø×ƒáíóúªº¿®¬½¼¡«»░▒▓│┤ÁÂÀ©╣║╗╝¢¥┐└┴┬├─┼ãÃ╚╔╩╦╠═╬¤ðÐÊËÈıÍÎÏ┘┌█▄¦Ì▀ÓßÔÒõÕµþÞÚÛÙýÝ¯´­±‗¾¶§÷¸°¨·¹³²■";
                var texto = texto_no_filtrado.toLowerCase();
                var sub_texto_inicio;
                var sub_texto;
                var caracteres_esp = 0;
                var temp_text;

                for(var i = texto.length-1; i >= 0; i--){
                    
                    sub_texto_inicio = texto.substring(0, i);     //obtiene la primera parte del texto antes de la posicion actual
                    sub_texto = texto.substring(i, texto.length);   //obtiene la parte del texto de la posicion actual hasta el final
                    
                    if (restringidos.indexOf(sub_texto[0],0)!=-1){
                        caracteres_esp = caracteres_esp + 1;    //cuenta los caracteres especiales eliminados
                        sub_texto = sub_texto.replace(sub_texto[0], ''); //elimina caracteres especiales en la sub-cadena
                        texto = sub_texto_inicio+sub_texto;    //vuelve a unir el texto 
                      
                    }
                    else{

                        this.malas_palabras.forEach(function(list) {
                                temp_text = sub_texto.substring(0, list.word.length);
                                n = temp_text.indexOf(list.word, 0);
                                if(n != -1 && n == 0){
                                    var ultima_palabra = list.word[list.word.length-1];
                                    var repeticiones = temp_text.split(ultima_palabra).length-1;
                                    var final = n+i+1;

                                    while (repeticiones != 0) {
                                        if(texto_no_filtrado[final].toLowerCase() == ultima_palabra)
                                            repeticiones--;
                                        final++;
                                    }

                                    arr.push({"word": list.word, "indice": n+i,  "final": final});
                                    //console.log( n+' + '+i );
                                }
                        });

                    }
                }


                //Ordena las malas palabras (JSON) por el "indice"
                function SortByIndice(x,y) {
                    return ((x.indice == y.indice) ? 0 : ((x.indice > y.indice) ? 1 : -1 ));
                }

                // Call Sort By Name
                arr.sort(SortByIndice);

                for (let index = arr.length-1; index >= 0; index--) {
                    texto_no_filtrado = [texto_no_filtrado.slice(0, arr[index].final), '</span>', texto_no_filtrado.slice(arr[index].final)].join('');
                    texto_no_filtrado = [texto_no_filtrado.slice(0, arr[index].indice), '<span style="background-color: #BEF781; border-radius: 25px;">', texto_no_filtrado.slice(arr[index].indice)].join('');
                }
                
                return texto_no_filtrado;
                
                
            }
        },
        mounted() {
            //console.log("ver_anuncio montado")
            //console.log(this.$route.query.idAnuncio)
            
            this.getDetalle();
            this.getPalabras();

            //this.filtrar();
            

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

  .mala_palabra{
      background-color: red
  }
</style>







