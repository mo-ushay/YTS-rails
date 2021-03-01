<template>
  <div class="d-flex flex-column">
    <div>
      <v-img
        lazy-src="https://i.redd.it/fddzip7onof31.jpg"
        height="315"
        width="210"
        src="https://i.redd.it/fddzip7onof31.jpg"
      />
      </div>
      <div class="text-left">
        <p> Hi There! {{movies.name}}</p>
        <p class="movie-title">
          Title
        </p>
        <p class="release-date">
          2020
        </p>
      <tbody class="movies">
          <tr
            v-for="item in movies"
            :key="item.id">
                <td>{{ item.name }}</td>
                <td>{{ item.releaseDate }}</td>
                <td>{{ item.downloads }}</td>
                <td>{{ item.synopsis }}</td>
            </tr>
      </tbody>
      </div>
    </div>
  </div>
</template>

<script>
import  GET_MOVIES  from 'graphql/queries/movies/retrieveMovies.gql'
import MovieRow from "@/components/MovieRow.vue"

export default {
  name: 'MovieBlock',
  components: {
    MovieRow
  },
  apollo: {
    movies: {
      query: GET_MOVIES,
      update: data => data.movies
    }
  },
  data() {
    return {
      movies: []
    }
  }
}
</script>

<style scoped>
  .movie-title{
    color: #fff;
    margin-top: 8px;
    margin-bottom: 0px;
  }
  .release-date{ 
    color: #919191;
    margin-top: 0px;
  }
  .movies {
    color: #921a1a;
  }
</style>
