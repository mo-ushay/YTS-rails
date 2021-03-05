<template>
  <v-container>
    <v-row>
      <tr v-for="movie in movies" :key="movie.id">
        <v-col class="mb-3">
          <MovieBlock :movie="movie" />
        </v-col>
      </tr>
    </v-row>
  </v-container>
</template>

<script>
import GET_MOVIES from "graphql/queries/movies/retrieveMovies.gql";
import MovieBlock from "components/MovieBlock.vue";
import MovieInfo from "components/MovieInfo.vue";
export default {
  name: "MovieRow",
  components: {
    MovieBlock,
    MovieInfo,
  },
  apollo: {
    movies: {
      query: GET_MOVIES,
      update: (data) => data.movies,
    },
  },
  data() {
    return {
      movies: [],
    };
  },
};
</script>
<style scoped>
h1 {
  text-align: center;
}
.movie-tag {
  color: rgb(68, 63, 63);
}
</style>
