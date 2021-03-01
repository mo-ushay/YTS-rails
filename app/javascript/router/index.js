import Router from 'vue-router';
import { routes } from './routes';
import Vue from 'vue'
import VueRouter from 'vue-router';

Vue.use(VueRouter)

export default new Router({
  routes: routes,
});

export const MovieBlockRouter = new Router({
  routes: MovieBlockRoutes
});

export const HomeRouter = new Router({
  routes: HomeRoutes
});

export const AboutRouter = new Router({
  routes: AboutRoutes
});
