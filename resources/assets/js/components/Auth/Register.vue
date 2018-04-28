<template>
    <div>
        <section id="two" class="wrapper style1">
            <header class="major">
                <h2>Nuevo usuario</h2>
                <p>Unete y disfruta los privilegios de ser parte de esta familia</p>
            </header>
            <div class="container" align="center">
                <form method="post" class="stdform" style="width: 60%; text-align: left" v-on:submit.prevent="Register">
                    
                    <div class="form-group">
                        Nombre:<br>
                            <div class="col-md-6">
                                <input id="nombre" type="text" class="form-control" name="nombre" v-model="nombre" placeholder="Ej: Nicolas" value="" required autofocus>
                            </div>
                        
                    </div><br>

                    <div class="form-group">
                        <br>Apellido:<br>
                        <div class="col-md-6">
                            <input id="apellido" type="text" class="form-control" name="apellido" v-model="apellido" placeholder="Ej: TieneDosPapas" value="" required autofocus>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <br>RUT:<br>
                        <div class="col-md-6">
                            <input id="rut" type="text" class="form-control" name="rut" v-model="rut"placeholder="Ej: 18384726" value="" required>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <br>Email:<br>
                        <div class="col-md-6">
                            <input id="email" type="email" class="form-control" name="email" v-model="email" placeholder="Ej: Correo@hotmail.com" value="" required>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <br>Contraseña:<br>
                        <div class="col-md-6">
                            <input id="password" type="password" class="form-control" name="password" v-model="password" placeholder="*************" value="" required>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <br>Confirme la contraseña:<br>
                        <div class="col-md-6">
                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="*************" value="" required>
                        </div>
                    </div><br>

                    <br>
                    <h4>Información de contacto adicional</h4>

                    <div class="form-group">
                        <br>Teléfono:<br>
                        <div class="col-md-6">
                            <input id="telefono" type="text" class="form-control" name="telefono" v-model="telefono" placeholder="Ej: 73728321822" value="" required>
                        </div>
                    </div><br>
                    <div class="form-group">
                        <br>Facebook:<br>
                        <div class="col-md-6">
                            <input id="facebook" type="text" class="form-control" name="facebook" v-model="facebook" required placeholder="Ej: https://www.facebook.com/miface" value="">
                        </div>
                    </div><br>

                    <div class="form-group">
                        <div class="row" >
                            <br>
                            <div class="6u" align="right"> 
                                <router-link to="/" class="w3-button w3-red w3-round-xxlarge">Cancelar</router-link>    
                            </div>
                            <div id="aceptar" class="6u" align="left"> 
                                <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="Aceptar">
                            </div>
                            <br>
                        </div>
                    </div>

                </form>
            </div>
        </section>
    </div>
</template>



<script>
    import axios from 'axios'

    export default {
        data: function() {
            return {
                email: '',
                errors: [],
                nombre:'',
                apellido:'',
                rut:'',
                password:'',
                telefono:'',
                facebook:''

            }
        },
        methods: {
            Register: function() {
                var url = 'registro';
                axios.post(url, {
                    email: this.email,
                    password: this.password,
                    nombre: this.nombre,
                    apellido: this.apellido,
                    rut: this.rut,
                    telefono: this.telefono,
                    facebook: this.facebook
                }).then(response => {
                    this.email = '';
                    this.password = '';
                    this.nombre='';
                    this.apellido='';
                    this.rut='';
                    this.telefono='';
                    this.facebbok='';
                    this.errors = [];
                    window.location.href = "/";
                    //toastr.success('Ha iniciado sesión correctamente');
                }).catch(error => {
                    this.errors = 'Correo o contraseña incorrecta';
                });
            },
        },
        mounted() {
            //console.log('Register Component ready.')
        }
        
    }
    
</script>