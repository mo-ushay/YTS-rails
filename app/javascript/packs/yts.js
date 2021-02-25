import Vue from 'vue'
import MovieBlock from 'components/MovieBlock.vue'
import { BootstrapVue} from 'bootstrap-vue'
import Vuetify from 'vuetify';

Vue.use(BootstrapVue)
Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#yts',
    render: h => h(MovieBlock)
  });
});
//alert('Nothing rendered!')
