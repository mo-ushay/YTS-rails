import Vue from "vue";
import App from "components/App.vue";
import { BootstrapVue } from "bootstrap-vue";
import { apolloProvider } from "utils/apolloConfiguration";
import VueApollo from "vue-apollo";
import Vuetify from "vuetify";
import "vuetify/dist/vuetify.min.css";
import VueRouter from "vue-router";
import routes from "../router/routes.js";

Vue.use(VueApollo);
Vue.use(VueRouter);
Vue.use(BootstrapVue);
Vue.use(Vuetify);

document.addEventListener("DOMContentLoaded", () => {
  new Vue({
    el: "#yts",
    apolloProvider,
    router: routes,
    render: (h) => h(App),
  });
});
