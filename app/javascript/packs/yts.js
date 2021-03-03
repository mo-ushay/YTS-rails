import Vue from "vue";
//import MovieRow from "components/MovieRow.vue";
import Home from "components/Home.vue";
//import MovieInfo from "components/MovieInfo.vue";
import { BootstrapVue } from "bootstrap-vue";
import { apolloProvider } from "utils/apolloConfiguration";
import VueApollo from "vue-apollo";
import VueRouter from "vue-router";
import Vuetify from "vuetify";
import "vuetify/dist/vuetify.min.css";
import { Routes } from "router/routes.js";

Vue.use(VueApollo);
Vue.use(VueRouter);
Vue.use(BootstrapVue);
Vue.use(Vuetify);

document.addEventListener("DOMContentLoaded", () => {
  new Vue({
    el: "#yts",
    router: Routes,
    apolloProvider,
    render: (h) => h(Home),
  });
});
