<template>
  <v-container>
    <!-- <h1 class="movie-tag">All Movies</h1> -->
    <v-row>
      <tr v-for="movie in movies" :key="movie.id" @click="onClick">
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
  methods: {
    onClick() {
      this.$router.push({ name: "MovieInfo" });
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
  color: rgb(78, 72, 72);
}
</style>
