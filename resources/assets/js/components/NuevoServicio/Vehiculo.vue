<template>
    <div>
        <p>
            <label>Patente</label>
            <span class="field"><input type="text" name="patente" id="patente" v-model="sync_patente" class="input-xxlarge" required="" placeholder="ZC-4566"/></span>
        </p>
        <p>
            <label>Categoria</label>
            <span class="field">
                <select class="form-control" id="categoria" name="categoria" v-model="sync_categoria" required="">
                    <option v-for="cat_vehiculo in categoria_vehiculos" :value="cat_vehiculo.cod" >{{cat_vehiculo.nombre}}</option>
                </select>
            </span>
        </p>
        <p>
            <label>Capacidad</label>
            <span class="field"><input type="text" name="capacidad" v-model="sync_capacidad" id="capacidad" class="input-xxlarge" required="" placeholder="Ej: 100kg, 4 personas, etc."/></span>
        </p>

    </div>
</template>



<script>
    export default {
        props: {
            categoria_vehiculos: { type: Object | Array },
            patente: String,
            categoria: String,
            capacidad: String
        },
        computed:{
            sync_patente: {
                get() {
                    return this.patente
                },
                set(val) {
                    this.$emit('update:patente', val)
                }
            },
            sync_categoria: {
                get() {
                    return this.categoria
                },
                set(val) {
                    this.$emit('update:categoria', val)
                }
            },
            sync_capacidad: {
                get() {
                    return this.capacidad
                },
                set(val) {
                    this.$emit('update:capacidad', val)
                }
            }
        },
        data () {
            return {
                buffer: Object.assign({}, this.value)
            }
        },
        methods: {
            
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
