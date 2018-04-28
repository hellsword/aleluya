<template>
    <div>
        <p>
            <label>RUT</label>
            <span class="field"><input type="text" name="rut" v-model="sync_rut" id="rut" class="input-xxlarge" required="" placeholder="18.355.344-2" /></span>
        </p>
        <p>
            <label>Nombre</label>
            <span class="field"><input type="text" name="nombre" v-model="sync_nombre" id="nombre" class="input-xxlarge" required="" placeholder="Roberto"/></span>
        </p>
        <p>
            <label>Apellido</label>
            <span class="field"><input type="text" name="apellido" v-model="sync_apellido" id="apellido" class="input-xxlarge" required="" placeholder="Rodriguez"/></span>
        </p>
        <p>
            <label>Profesión</label>
            <span class="field"><input type="text" name="profesion" v-model="sync_profesion" id="profesion" class="input-xxlarge" required="" placeholder="Mecánico"/></span>
        </p>
        <p>
            <label>Años de experiencia</label>
            <span class="field"><input type="text" name="years" v-model="sync_years" id="years" class="input-xxlarge" required="" placeholder="12" v-on:keypress="isNumber" /></span>
        </p>
        <p>
            <label>Curriculum</label>
            <span class="field"><input type="text" name="curriculum" v-model="sync_curriculum" id="curriculum" class="input-xxlarge" required="" placeholder="mecánico naval, magister en mecánica automotriz"/></span>
        </p>
    </div>
</template>



<script>
    export default {
        props: {
            rut: String,
            nombre: String,
            apellido: String,
            profesion: String,
            years: String,
            curriculum: String
        },
        computed:{
            sync_rut: {
                get() {
                    return this.rut
                },
                set(val) {
                    this.$emit('update:rut', val)
                }
            },
            sync_nombre: {
                get() {
                    return this.nombre
                },
                set(val) {
                    this.$emit('update:nombre', val)
                }
            },
            sync_apellido: {
                get() {
                    return this.apellido
                },
                set(val) {
                    this.$emit('update:apellido', val)
                }
            },
            sync_profesion: {
                get() {
                    return this.profesion
                },
                set(val) {
                    this.$emit('update:profesion', val)
                }
            },
            sync_years: {
                get() {
                    return this.years
                },
                set(val) {
                    this.$emit('update:years', val)
                }
            },
            sync_curriculum: {
                get() {
                    return this.curriculum
                },
                set(val) {
                    this.$emit('update:curriculum', val)
                }
            }
        },
        data () {
            return {
                buffer: Object.assign({}, this.value)
            }
        },
        methods: {
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
