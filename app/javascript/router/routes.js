import MovieBlock from "components/MovieBlock.vue";
import Home from "components/Home.vue"
import About from "components/About.vue"

export const MovieBlockRoutes = [
	{
    path: '/movies',
    name: 'MovieBlock',
    component: MovieBlock
	}
];

export const HomeRoutes = [
  {
    path: '/',
    name: 'Home',
    component: Home
	}
];

export const AboutRoutes = [
  {
    path: '/about',
    name: 'About',
    component: About
	}
];