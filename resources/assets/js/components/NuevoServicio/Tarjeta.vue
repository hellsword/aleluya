<template>
    <div class="par terms" style="padding: 0 20px;">
        
        <label>Pago con Tarjeta</label><br>
        <p>
            <label>N° Tarjeta: </label>
            <span class="field"><input id="num_tarjeta" v-model="sync_num_tarjeta" type="text" name="num_tarjeta" class="input-xxlarge" v-on:change="detecta_tarjeta" value="" required autofocus placeholder="4621081012003829" v-on:keypress="isNumber"/></span>
        </p>

        <p>
            <label>Tipo Tarjeta: </label>
            <span class="field"><input id="tarjeta" type="text" name="tarjeta" class="input-xxlarge" value="" autofocus readonly required="" /></span>
        </p>

        <p>
            <label>Fecha de caducidad: </label><div id="row-fluid" class="row-fluid">
                <div class="span1"><input id="mes" v-model="sync_mes" type="text" class="form-control" name="mes" value="" required placeholder="MM" maxlength="2" v-on:keypress="isNumber" ></div>
                <div class="span1"><input id="year" v-model="sync_year" type="text" class="form-control" name="year" value="" required placeholder="YY" maxlength="2" v-on:keypress="isNumber" ></div>
                <div class="span1"><input id="c_seguridad" v-model="sync_c_seguridad" type="text" class="form-control" name="c_seguridad" value="" required placeholder="637" maxlength="3" v-on:keypress="isNumber" ></div> <div class="span1"><i class="fa fa-credit-card" aria-hidden="true"></i></div>
        </div></p>

        <p>
            <label>Nombre del titular: </label>
                <div class="4u"><input id="nombre" type="text" class="input-xxlarge" name="nombre" value="" required placeholder="Nombre"></div>
        </p>
        <p>
                <label>Apellidos del titular: </label>
                <div class="4u"><input id="apellidos" type="text" class="input-xxlarge" name="apellidos" value="" required placeholder="Apellidos"></div>
        </p><br>

    </div>
</template>



<script>
    export default {
        props: {
            num_tarjeta: String,
            tarjeta: String,
            mes: String,
            year: String,
            c_seguridad: String
        },
        computed:{
            sync_num_tarjeta: {
                get() {
                    return this.num_tarjeta
                },
                set(val) {
                    this.$emit('update:num_tarjeta', val)
                }
            },
            sync_tarjeta: {
                get() {
                    return this.tarjeta
                },
                set(val) {
                    this.$emit('update:tarjeta', val)
                }
            },
            sync_mes: {
                get() {
                    return this.mes
                },
                set(val) {
                    this.$emit('update:mes', val)
                }
            },
            sync_year: {
                get() {
                    return this.year
                },
                set(val) {
                    this.$emit('update:year', val)
                }
            },
            sync_c_seguridad: {
                get() {
                    return this.c_seguridad
                },
                set(val) {
                    this.$emit('update:c_seguridad', val)
                }
            }
        },
        data () {
            return {
                buffer: Object.assign({}, this.value)
            }
        },
        methods: {
            detecta_tarjeta: function() {
                
                var n_tarjeta = document.getElementById("num_tarjeta");
                var tarjeta = document.getElementById("tarjeta");
                if(n_tarjeta.value[0] == 4){
                    tarjeta.value = "VISA";
                    this.sync_tarjeta = tarjeta.value;
                }
                else if(n_tarjeta.value[0] == 5){
                    tarjeta.value = "MASTERCARD";
                    this.sync_tarjeta = tarjeta.value;
                }
                else{
                    tarjeta.value = "TARJETA NO VÁLIDA";  
                    this.sync_tarjeta = tarjeta.value;
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
            }
        },
        watch: {        //Busca cambios en los v-model
            value: {
                handler() {
                    this.buffer = Object.assign({}, this.value)
                },
                deep: true
            }
        },
        mounted() {
            //console.log('AsideSearch Component ready.')
        }
        
    }
    
</script>
