import Vue from "vue";
//import MovieRow from "components/MovieRow.vue";
import App from "components/App.vue";
//import MovieInfo from "components/MovieInfo.vue";
import { BootstrapVue } from "bootstrap-vue";
import { apolloProvider } from "utils/apolloConfiguration";
import VueApollo from "vue-apollo";

import Vuetify from "vuetify";
import "vuetify/dist/vuetify.min.css";
import VueRouter from 'vue-router';
// import { YtsRouter } from 'router';
import routes from '../router/routes.js'


Vue.use(VueApollo);
Vue.use(VueRouter);
Vue.use(BootstrapVue);
Vue.use(Vuetify);

document.addEventListener("DOMContentLoaded", () => {
  new Vue({
    el: "#yts",
    apolloProvider,
    // router: YtsRouter,
    router: routes,
    render: h => h(App)
  });
});
