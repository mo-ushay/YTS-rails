<template>
  <div class="d-flex flex-column">
    <div class="text-left">
      <tr v-for="item in movies" :key="item.id">
        <div>
          <v-img
            lazy-src="https://i.redd.it/fddzip7onof31.jpg"
            height="315"
            width="210"
            src="https://i.redd.it/fddzip7onof31.jpg"
          />
        </div>
        <p class="movie-title">
          {{ item.name }}
        </p>
        <p class="release-date">
          {{ item.releaseDate }}
        </p>
      </tr>
    </div>
  </div>
</template>

<script>

import GET_MOVIES from "graphql/queries/movies/retrieveMovies.gql";
export default {
  name: "MovieBlock",
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
.movie-title {
  color: rgb(153, 18, 18);
  margin-top: 8px;
  margin-bottom: 0px;
}
.release-date {
  color: #919191;
  margin-top: 0px;
}
.movies {
  color: #921a1a;
}
</style>
