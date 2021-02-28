import Vue from 'vue'
import MovieBlock from 'components/MovieBlock.vue'
import { BootstrapVue } from 'bootstrap-vue'
import { apolloProvider } from 'utils/apolloConfiguration'
import Vuetify from 'vuetify'
import VueApollo from 'vue-apollo'
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap-vue/dist/bootstrap-vue.css"

//Vue.use(VueRouter)
Vue.use(VueApollo)
Vue.use(BootstrapVue)
Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#yts',
    //router,
    apolloProvider,
    render: h => h(MovieBlock),
  });
});
