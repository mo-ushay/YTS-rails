import Router from 'vue-router';
import { routes } from './routes';


export default new Router({
  routes: routes,
});

export const MovieBlockRouter = new Router({
  routes: MovieBlockRoutes
});
