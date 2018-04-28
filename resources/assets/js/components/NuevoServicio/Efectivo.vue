<template>
    <div class="par terms" style="padding: 0 20px;">
        
        <label>Pago en efectivo</label><br>        
        <p>
            <label>Duración del anuncio (meses): </label>
            <span class="field"><input type="text" id="tiempo" name="tiempo" class="input-small input-spinner" onchange="calcula_total()" required="" placeholder="4" onkeypress="return validaNumericos(event)" /></span>
        </p>
        <p>
            <label>Total: </label>
            <span class="field"><input type="text" id="total" name="total" class="input-xxlarge" value="" readonly/></span>
        </p>
        <br>
    </div>
</template>



<script>
    export default {
        methods: {
            loadFile: function(event) {
            }
        },
        mounted() {
            //console.log('AsideSearch Component ready.')
        }
        
    }
    
</script>
