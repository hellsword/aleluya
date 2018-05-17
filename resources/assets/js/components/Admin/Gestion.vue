<template>
 

<div>



<table class="table table-striped table-bordered table-condensed table-hover">
               <thead>
                    <th>Regiones</th>
                    <th>Cantidad de Anuncios</th>
                    <th>Monto Total</th>
                 
                </thead>
            
                <tr v-for="regiones in datos.region"> 
                    <td>{{regiones.REGION_NOMBRE}}</td>
                    <td>{{regiones.cantidad}}</td>
                    <td>{{regiones.total}}</td>
                </tr>
   
            </table>
<div v-if="datos.region">
              {{cargaGrafico(datos.region)}}
              <column-chart :data="chartData"></column-chart>
        </div>


         
<div v-if="datos.region">
              {{cargaGrafico2(datos.region)}}
              <line-chart :data="chartData2"></line-chart>
        </div>
</div>

</template>

<script>

import { swiper, swiperSlide } from 'vue-awesome-swiper'
    import Vue from 'vue'
    import VueChartkick from 'vue-chartkick'
    Vue.use(VueChartkick)

    import axios from 'axios';
    export default {
        data: function() {
            return {
                datos : [],
                chartData : [],
                chartData2 : []

                           
            }
        },
        props: {
            auth: { type: Object | Array },
        },
        methods: {
            getDatos: function() {
                    
                var urlKeeps = 'gestion';
                axios.get(urlKeeps).then(response => {
                    this.datos = response.data
                   
                });
            },


            
                    

                 cargaGrafico: function(region) {
                 
                
                for(var i = region.length-1; i >= 0; i--){
                     
                 this.chartData[i] =[region[i].REGION_NOMBRE,region[i].cantidad];
               
                 }

                    
            },

             cargaGrafico2: function(region) {
                 
                
                for(var i = region.length-1; i >= 0; i--){
                     
                 this.chartData2[i] =[region[i].REGION_NOMBRE,region[i].total];
               
                 }

                    
            },
       },
          
       
        mounted() {
             this.getDatos();

        
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