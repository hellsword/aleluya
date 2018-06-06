             <template>
 

<div>

{{datos}}
  <section>
      <form method="get" class="stdform" style="width: 60%; text-align: left" v-on:submit.prevent="getDatos">
        
            <h5>Personalice su busqueda por Fechas: </h5>
            <h6>Fecha Inicio</h6>  
            
            <input type="text" id="fechaI" name="fechaI" value="2018-05-05" v-model="fechaI">

<!--
            <select type="text" id="fechaI" name="fechaI">
                <option v-for="fechasI in datos.fechas" :value="fechasI.fechaI">{{fechasI.fechaI}}</option>
            </select> 
            -->
        <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="filtrar">
      </form>
</section>

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
              <column-chart xtitle="Regiones" ytitle="Cantidad" download="true" label="Cantidad"
              width="800px" height="500px" :data="chartData">
                
              </column-chart>
        </div>


         
<div v-if="datos.region">
              {{cargaGrafico2(datos.region)}}
              <line-chart prefix="$"  width="800px" height="500px" 
              xtitle="Regiones" ytitle="Monto Total" label="Monto" :data="chartData2"></line-chart>
        </div>
<br><br><br>
        <div v-if="datos.fechas">
              {{cargaGrafico3(datos.fechas)}}
              <timeline  width="800px" height="500px" :data="chartData3"></timeline >
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
                chartData2 : [],
                chartData3 : [],
                fechaI : ''
                           
            }
        },
        props: {
            auth: { type: Object | Array },
        },
        methods: {
            getDatos: function() {
                    console.log("mandando mensaje: "+this.fechaI)
                var urlKeeps = 'gestion';
                axios.get(urlKeeps, {
                params: {
                    parametro1: this.fechaI,
                    parametro2: 'flaco gay',
                    parametro3: 'toranzo trolazo'
                },}).then(response => {
                    this.datos = response.data
                   
                });
            },
/*
            Register: function() {
                var url = 'gestion';
                axios.post(url, {
                    fechaI: this.fechaI
                    //FechaV: this.FechaV,
                 
                }).then(response => {
                    //this.fechaI = '1';
                    this.getDatos();
                    //this.password = '2';
          
                }).catch(error => {
            
                });
            },
*/
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
   

             cargaGrafico3: function(fechas) {
                 
                
                for(var i = fechas.length-1; i >= 0; i--){
                     
                 this.chartData3[i] =[fechas[i].titulo,fechas[i].fechaI,fechas[i].fechaVe];
               
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