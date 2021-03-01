import Vue from 'vue'
import MovieBlock from 'components/MovieBlock.vue'
import { BootstrapVue } from 'bootstrap-vue'
import { apolloProvider } from 'utils/apolloConfiguration'
import VueApollo from 'vue-apollo'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'

Vue.use(VueApollo)
Vue.use(Vuetify)
// Vue.use(BootstrapVue)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#yts',
    apolloProvider,
    render: h => h(MovieBlock),
  });
});
