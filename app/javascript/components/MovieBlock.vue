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
      <p> {{movies.name}}</p>
      <p class="movie-title">
        Title
      </p>
      <p class="release-date">
        2020
      </p>
    </div>
  </div>
</template>

<script>
import  GET_MOVIES  from 'graphql/queries/movies/retrieveMovies.gql'
export default {
  data(){
    return {
      movies: []
    }
  },
  name: 'MovieBlock',
 apollo: {
  movies: {
    query: GET_MOVIES,
    update: (data) => {
      console.log(data)
    }
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
</style>
