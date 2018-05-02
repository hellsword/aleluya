<template>
    <div>
        <section id="two" class="wrapper style1">
            <header class="major">
                <h2>Login</h2>
            </header>
            <div class="container" align="center">
            <div class="widgetcontent">
                <form method="post" class="stdform" style="width: 60%;" v-on:submit.prevent="Login">

                    <div class="form-group">
                        <p>
                            <label>E-Mail Address:</label>
                            <span class="field"><input type="text" name="email" class="input-large" v-model="Email" /></span>
                        </p>
                    </div>

                    <div class="form-group">
                        <p>
                            <label>Contraseña:</label>
                            <span class="field"><input type="password" name="password" class="input-large" required v-model="Password"/></span>
                        </p>
                    </div>

                    <br>
                    <p class="stdformbutton">
                        <router-link to="/" class="w3-button w3-red w3-round-xxlarge">Cancelar</router-link>
                        <input type="submit" class="w3-button w3-blue w3-round-xxlarge" value="Aceptar">
                    </p>
                    <br>
                    <p class="stdformbutton">
                        <span v-for="error in errors" class="text-danger">{{ error }}</span>
                    </p>

                </form>
            </div>
            </div>
        </section>
    </div>
</template>



<script>
    import axios from 'axios'

    export default {
        data: function() {
            return {
                Email: '',
                Password: '',
                errors: '',
            }
        },
        methods: {
            Login: function() {
                var url = 'login';
                axios.post(url, {
                    email: this.Email,
                    password: this.Password
                }).then(response => {
                    this.Email = '';
                    this.Password = '';
                    this.errors = [];
                    window.location.href = "/";
                    toastr.success('Ha iniciado sesión correctamente');
                }).catch(error => {
                    this.errors = 'Correo o contraseña incorrecta';
                });
            },
        },
        mounted() {
            //console.log('Login Component ready.')
        }
        
    }
    
</script>

