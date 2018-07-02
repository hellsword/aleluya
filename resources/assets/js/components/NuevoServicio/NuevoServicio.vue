<template>
    <div align="center">
    <div style="text-align: left; width: 60%;" class="column">
        <form-wizard @on-complete="onComplete" enctype="multipart/form-data">
        <template slot="step" slot-scope="props">
            <wizard-step :tab="props.tab"
            :transition="props.transition"
            :key="props.tab.title"
            :index="props.index">
            </wizard-step>
        </template>

        <tab-content title="Paso 1: Información Básica" icon="ti-user">

            <p>
                <label>Título</label>
                <span class="field"><input type="text" name="titulo" id="titulo" v-model="titulo" class="input-xxlarge" required="" placeholder="Escoja el título que tendrá su anuncio" /></span>
            </p>

            <p>
                <label>Tipo servicio</label>
                    <select name="tipo" id="tipo" class="uniformselect" required="" v-model="tipo" v-on:change="TipoServicio">
                        <template v-for="categoria in filtros.categorias">
                            <option  :value=categoria.nombre disabled style="background-color: pink;" >{{categoria.nombre_completo}}</option>
                            <option v-for="sub_categoria in filtros.sub_categorias" v-if="sub_categoria.id_categoria == categoria.id_categoria" :value="sub_categoria.id_categoria+'|'+sub_categoria.sub_categoria" >{{sub_categoria.nombre_completo}} </option>
                        </template>
                    </select>
            </p>

            <h4 class="widgettitle">Ubicación del servicio</h4>

            <p>
                <label>Región</label>
                <select class="form-control" id="region" name="region" v-model="region" required="" v-on:click="selectProvincia(filtros.provincias)">
                    <option value="" >Todos</option>
                    <option v-for="region in filtros.regiones" :value=region.REGION_ID >{{region.REGION_NOMBRE}}</option>
                </select> 
            </p>
            <p>
                <label>Provincia</label>
                <select class="form-control" id="provincia" v-model="provincia" name="provincia" required="" v-on:click="selectComuna(filtros.comunas)">
                    <option value="" >-</option>
                </select> 
            <p>
                <label>Comuna</label>
                <select class="form-control" id="comuna" v-model="comuna" name="comuna" required="">
                    <option value="" >-</option>
                </select> 
            </p>

            <h4 class="widgettitle">Descripción de su anuncio</h4>

            <p>
            <span class="field"> 
                <ckeditor v-model="descripcion" :height="'300px'" :toolbar="[['Format']]"></ckeditor>
            </span> 
            </p>
            <p>
                <label>Defina el precio de su servicio</label>
                <span class="field"><input type="text" name="precio_serv" id="precio_serv" class="input-xxlarge" required="" placeholder="40990" v-on:keypress="isNumber" v-model="precio_serv" /></span>
            </p>
        </tab-content>


        <tab-content title="Información Avanzada" icon="ti-settings">
            <div id="cambia_servicio">
                <persona v-if="tipo_servicio == 1" :rut.sync="rut" :nombre.sync="nombre" :apellido.sync="apellido" :profesion.sync="profesion" :years.sync="years" :curriculum.sync="curriculum"></persona>
                <vehiculo v-if="tipo_servicio == 2" :categoria_vehiculos=filtros.categoria_vehiculos :patente.sync="patente" :categoria.sync="categoria" :capacidad.sync="capacidad" ></vehiculo>

                <p>
                    <label>Subir Imagenes (sólo formato jpeg):</label>
                    <span class="field"><input type="file" name="imagen" id="imagen" class="input-xxlarge" accept="image/*" multiple="" v-on:change="loadFile" required=""/></span>
                </p>

                <div id="imagenes"></div>
            </div>
        </tab-content>


        <tab-content title="Información de Pago" icon="ti-check">
            
            <div class="tabcontent">
                <p>
                    <label>Modo de pago</label>
                    <select name="modo_pago" id="modo_pago" class="uniformselect" v-model="modo_pago" required="">
                        <option value="gratis">Plan gratuito</option>
                        <option value="tarjeta">Tarjeta de crédito</option>
                        <!-- <option value="efectivo" >Efectivo</option>  -->
                    </select>   
                </p>
            </div><br>
            
            <tarjeta v-if="modo_pago == 'tarjeta'" :num_tarjeta.sync="num_tarjeta" :tarjeta.sync="tarjeta" :mes.sync="mes" :year.sync="year" :c_seguridad.sync="c_seguridad"></tarjeta>
            <!-- <label v-if="modo_pago == 'efectivo'">Pago en efectivo</label><br>  -->   

            <div v-if="modo_pago != 'gratis'" >
                <p>
                    <label>Duración del anuncio (meses): </label>
                    <span class="field"><input type="text" v-model="tiempo" id="tiempo" name="tiempo" class="input-small input-spinner" v-on:change="calcula_total" required="" placeholder="4" v-on:keypress="isNumber" /></span>
                </p>
                <p>
                    <label>Total: </label>
                    <span class="field"><input type="text" id="total" name="total" class="input-xxlarge" value="" readonly/></span>
                </p>
            </div>

            <!-- <button class="button is-primary" v-if="modo_pago == 'efectivo'" > Pagar </button> <br>  -->
            <br>

        </tab-content>

        </form-wizard>
    </div>
    </div>
</template>


<script>

    import axios from 'axios'

    //Importando componentes hijos
    import Vehiculo from './Vehiculo.vue'
    import Persona from './Persona.vue'
    //import Efectivo from './Efectivo.vue'
    import Tarjeta from './Tarjeta.vue'
    import Ckeditor from './../Ckeditor.vue'

    export default {

        metaInfo: {
        },
        props: {
            filtros: { type: Object | Array },
        },
        data () {
            return {
                descripcion: '',
                titulo: '',
                precio_serv: '',
                tipo: '',
                modo_pago: 'gratis',
                region: '',
                provincia: '',
                comuna: '',
                tipo_servicio: '1',
                
                //Datos componente Vehiculo.vue
                patente: '',
                categoria: '',
                capacidad: '',

                //Datos componente Persona.vue
                rut: '',
                nombre: '',
                apellido: '',
                profesion: '',
                years: '',
                curriculum: '',

                //Datos componente Tarjeta.vue
                num_tarjeta: '',
                tarjeta: '',
                mes: '',
                year: '',
                c_seguridad: '',

                imagen: {
                    image: [],
                    url: []
                },
                tiempo: '',
                total: '',
            }
        },
        methods: {
            onComplete: function() {
                //alert('Yay. Done!');
                if(this.modo_pago == 'gratis')
                    this.total = 0;
                toastr.success('Estamos procesando su solicitud.');
                this.Guardar();
            },
            Guardar: function() {
                axios.defaults.headers.post['Content-Type'] = 'multipart/form-data';

                var url = '/appServicios';
                axios.post(url, {
                    descripcion: this.descripcion,
                    titulo: this.titulo,
                    precio_serv: this.precio_serv,
                    tipo: this.tipo,
                    modo_pago: this.modo_pago,
                    region: this.region,
                    provincia: this.provincia,
                    comuna: this.comuna,
                    patente: this.patente,
                    categoria: this.categoria,
                    capacidad: this.capacidad,
                    rut: this.rut,
                    nombre: this.nombre,
                    apellido: this.apellido,
                    profesion: this.profesion,
                    years: this.years,
                    curriculum: this.curriculum,
                    num_tarjeta: this.num_tarjeta,
                    tarjeta: this.tarjeta,
                    mes: this.mes,
                    year: this.year,
                    c_seguridad: this.c_seguridad,
                    imagen: this.imagen.image,
                    urlImagen: this.imagen.url,
                    tiempo: this.tiempo,
                    total: this.total
                }).then(response => {
                    this.descripcion = '',
                    this.titulo = '',
                    this.precio_serv = '',
                    this.tipo = '',
                    this.modo_pago = 'tarjeta',
                    this.region = '',
                    this.provincia = '',
                    this.comuna = '',
                    this.patente = '',
                    this.categoria = '',
                    this.capacidad = '',
                    this.rut = '',
                    this.nombre = '',
                    this.apellido = '',
                    this.profesion = '',
                    this.years = '',
                    this.curriculum = '',
                    this.num_tarjeta = '',
                    this.tarjeta = '',
                    this.mes = '',
                    this.year = '',
                    this.c_seguridad = '',
                    this.imagen.image = [],
                    this.imagen.url = [],
                    this.tiempo = '',
                    this.total = '',
                    this.tipo_servicio = '1',
                    console.log(response.data);
                    this.errors = [];
                    toastr.success('Anuncio creado con exito.');
                    window.location.href = "/servicios";
                    //toastr.success('Ha iniciado sesión correctamente');
                }).catch(error => {
                    this.errors = 'No se pudo crear su servicio';
                    toastr.error('Ha ocurrido un error.');
                });
            },
            loadFile: function(event) {
                var imagenes = document.getElementById("imagenes");   
                imagenes.parentNode.removeChild(imagenes);
                document.getElementById('cambia_servicio').insertAdjacentHTML( 'beforeend', '<div id="imagenes"></div>' ); 

                //Obtiene cantidad de imagenes
                var limite = document.getElementById("imagen").files;
                //alert(limite.length);

                //document.getElementById('imagenes').innerHTML = '<div id="row-fluid" class="row-fluid">';

                var str = '<br> <section id="two" class="wrapper style1"> <div class="container"><h4 class="widgettitle">VISTA PREVIA:</h4> <div class="row">';
                var cont = 0;
                for (var i = 0; i < limite.length; i++) {
                    str = str+'<div class="3u"><section class="special"><a href="#" class="image fit"> <img class="imagen" id="output'+i+'" /> </a></section></div>';

                    cont = cont+1;

                    if(cont == 3){
                        cont = 0;
                        str = str+'</div><br><hr><br> <div class="row">';
                    }

                }
                str = str+'</div><br><br></div></section>';

                document.getElementById('imagenes').innerHTML = str;

                for (var i = 0; i < limite.length; i++) {
                    var output = document.getElementById('output'+i);
                    output.src = URL.createObjectURL(event.target.files[i]);
                    

                    this.imagen.url.push(event.target.files[i].name);
                    
                    var fileReader = new FileReader();
                    fileReader.readAsDataURL(event.target.files[i]);
                    
                    fileReader.onload = (event) => {
                        this.imagen.image.push(event.target.result);
                    }
                }
            },
            isNumber: function(evt) {
                evt = (evt) ? evt : window.event;
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if ((charCode > 31 && (charCode < 48 || charCode > 57)) && charCode !== 46) {
                    evt.preventDefault();;
                } else {
                    return true;
                }
            },
            calcula_total: function() {
                var tiempo = document.getElementById("tiempo");
                var total = document.getElementById("total");
                
                total.value = tiempo.value*5290;
                this.total =  total.value;
            },
            TipoServicio: function() {
                
                var temp = this.tipo.split('|');
                this.tipo_servicio = temp[0];
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
        components: { 
            Ckeditor,
            Vehiculo,
            Persona,
            //Efectivo,
            Tarjeta
        },
        mounted() {
        }
        
    }
    
</script>

