<template>
    <div class="3u">
        <section>
        
            
            <h5>Personalice su busqueda por Fechas: </h5>
            <h6>Fecha Inicio</h6>  
              
              
            <select type="text" class="form-control" id="fechaI" name="fechaI">
                <option v-for="fechasI in filtro2.orden" :value=fechasI.fecha>{{fechasI.fecha}}</option>
            </select> 
        
            <h6>Fecha De Vencimiento</h6>
            <select type="text" class="form-control" id="FechaV" name="FechaV">
                <option v-for="FechaV in filtro2.orden" :value=FechaV.fecha_venc >{{FechaV.fecha_venc}}</option>
            </select> <br>
               
                  <br><button type="submit" class="btn btn-primary" v-on:click.prevent="getDatos2(fecha)">Buscar</button>
       
        </section>
        <hr />
    </div>
</template>



<script>
  
    export default {
        props: {
            filtro2 : { type: Object | Array },
            datos : [],
        },
        methods: {

                getDatos2: function(fechaI) {
                    
                var urlKeeps = 'gestion'+fechaI;
                axios.get(urlKeeps).then(response => {
                    this.datos = response.data
                   
                });
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
