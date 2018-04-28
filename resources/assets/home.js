new Vue({
    el: '#home',
    created: function() {
        this.getServicios();
    },
    data: {
        servicios: []
    },
    methods: {
        getServicios: function(page) {
            var urlKeeps = 'servicios';
            axios.get(urlKeeps).then(response => {
                this.servicios = response.data
            });
        }
    }
});