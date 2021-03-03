import Router from 'vue-router';
import MovieRow from "components/MovieRow.vue";
import Home from "components/Home.vue";
import About from "components/About.vue";
import MovieInfo from "components/MovieInfo.vue";
import VueRouter from "vue-router";
import Vue from "vue";

let routes = [
  {
    path: "/movies",
    name: "MovieRow",
    component: MovieRow,
    props: true
  },
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/about",
    name: "About",
    component: About,
  },
  {
    path: "/details",
    name: "MovieInfo",
    component: MovieInfo,
  },
];
 
export default new VueRouter({routes});
