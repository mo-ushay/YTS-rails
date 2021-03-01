import Vue from "vue";
import MovieRow from "components/MovieRow.vue";
import { BootstrapVue } from "bootstrap-vue";
import { apolloProvider } from "utils/apolloConfiguration";
import VueApollo from "vue-apollo";
import Vuetify from "vuetify";
import "vuetify/dist/vuetify.min.css";

Vue.use(VueApollo);
Vue.use(BootstrapVue);
Vue.use(Vuetify);

document.addEventListener("DOMContentLoaded", () => {
  new Vue({
    el: "#yts",
    apolloProvider,
    render: (h) => h(MovieRow),
  });
});
