<template>

<div>

    <form method="get" class="stdform" style="width: 60%; text-align: left" v-on:submit.prevent="getDatos" >
            <h6>Filtrar por secretaria</h6>  
            <select class="form-control" id="id_secretaria" name="id_secretaria" v-model="id_secre">
                <option :value=null selected>TODAS</option>
                <option v-for="secretaria in datos.secretarias" :value=secretaria.id_secretaria>{{secretaria.nombre}} {{secretaria.apellido}}</option>
            </select> 
        
          <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="filtrar">

      </form>

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


  <section>
      <form method="get" class="stdform" style="width: 60%; text-align: left" v-on:submit.prevent="getDatos" >
        
            <h5>Filtro por Fechas Grafico 1: </h5>
            <h6>Fecha Inicio</h6>  
            
            <input type="text" id="fechaI" name="fechaI" value="" v-model="fechaI" required>
            <h6>Fecha Vencimiento</h6>  
            
            <input type="text" id="fechaV" name="fechaV" value="" v-model="fechaV" required>
        
          <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="filtrar">

      </form>

        
</section>

  <div v-if="datos.region">

              {{cargaGrafico(datos.region)}}
              <column-chart xtitle="Regiones" ytitle="Cantidad" download="true" label="Cantidad"
              width="800px" height="500px" :data="chartData">
                
              </column-chart>


        </div>



  <section>
      <form method="get" class="stdform" style="width: 60%; text-align: left" v-on:submit.prevent="getDatos2">
        
            <h5>Filtro por Fechas Grafico 2: </h5>
            <h6>Fecha Inicio</h6>  
            
            <input type="text" id="fechaI2" name="fechaI2" value="" v-model="fechaI2" required>
            <h6>Fecha Vencimiento</h6>  
            
            <input type="text" id="fechaV2" name="fechaV2" value="" v-model="fechaV2" required>
        
          <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="filtrar">

      </form>
</section>

         
<div v-if="datos2.region">
              {{cargaGrafico2(datos2.region)}}
              <line-chart prefix="$"  width="800px" height="500px" 
              xtitle="Regiones" ytitle="Monto Total" label="Monto" :data="chartData2"></line-chart>
        </div>
<br><br><br>




  <section>
      <form method="get" class="stdform" style="width: 60%; text-align: left" v-on:submit.prevent="getDatos3">
        
            <h5>Filtro por Fechas Grafico 3: </h5>
            <h6>Fecha Inicio</h6>  
            
            <input type="text" id="fechaI3" name="fechaI3" value="" v-model="fechaI3" required>
            <h6>Fecha Vencimiento</h6>  
            
            <input type="text" id="fechaV3" name="fechaV3" value="" v-model="fechaV3" required>
        
          <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="filtrar">

      </form>
</section>


        <div v-if="datos3.fechas">
              {{cargaGrafico3(datos3.fechas)}}
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
                datos2 : [],
                datos3 : [],
                chartData : [],
                chartData2 : [],
                chartData3 : [],
                chartData4 : [],
                fechaI : '',
                fechaV : '',
                fechaI2 : '',
                fechaV2 : '',
                fechaI3 : '',
                fechaV3 : '',
                id_secre : ''
                           
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
                    parametro2: this.fechaV,
                    parametro_secre: this.id_secre
                },}).then(response => {
                    this.datos = response.data;
                    this.LimpiarGrafico();
                    this.cargaGrafico(this.datos.region);
                    //revisa si existe registro en el array 
                    if(this.datos.region.length==0){
                         toastr.error('No Hay Registros para esas Fechas');
                         }

                });
            },
//cargamos los datos para el segundo grafico
              getDatos2: function() {
                    console.log("mandando mensaje: "+this.fechaI)
                var urlKeeps = 'gestion';
                axios.get(urlKeeps, {
                params: {
                    parametro3: this.fechaI2,
                    parametro4: this.fechaV2
                },}).then(response => {
                    this.datos2 = response.data
                    this.LimpiarGrafico2();
                    this.cargaGrafico2(this.datos2.region)
                  //revisa si existe registro en el array 
                    if(this.datos2.region.length==0){
                         toastr.error('No Hay Registros para esas Fechas');
                         }
                });
            },

//cargamos los datos para el Tercer grafico
             getDatos3: function() {
                    console.log("mandando mensaje: "+this.fechaI)
                var urlKeeps = 'gestion';
                axios.get(urlKeeps, {
                params: {
                    parametro5: this.fechaI3,
                    parametro6: this.fechaV3
                },}).then(response => {
                    this.datos3 = response.data
                    this.LimpiarGrafico3();
                    this.cargaGrafico3(this.datos3.region)
                   //revisa si existe registro en el array 
                    if(this.datos3.region.length==0){
                         toastr.error('No Hay Registros para esas Fechas');
                         }
                });
            },

                cargaGrafico: function(region) {
                 
           
                for(var i = region.length-1; i >= 0; i--){
                     
                 this.chartData[i] =[region[i].REGION_NOMBRE,region[i].cantidad];
               
                 }
               
                    
            },

            //Metodos para limpiar los arreglas que tienen los datos de los graficos
            LimpiarGrafico: function() {
                this.chartData=[];   
            },
            
            LimpiarGrafico2: function() {
                this.chartData2=[]; 
            },

            LimpiarGrafico3: function() {
             this.chartData3=[]; 
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
            this.getDatos2();
            this.getDatos3();

        
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