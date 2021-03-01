<template>
  <div v-if="movie && movie.Response=='True'" >
    <div class=" container mt-3">
    <div class="row">
      <div class="col-sm-12 col-md-10 col-lg-6">
        <div class="col-12 ">
          <img v-if="movies.profile_photo!=''"
          :src="movie.profile_photo" height="500px" width="400px"
          :alt="movies.name"
        />
        <img v-else src="https://via.placeholder.com/400x500" :alt="movie.name" />
        </div>
      </div>
      <div class="col-sm-12 col-md-10 col-lg-6 text-left bg-dark text-white info">
        <div class="col-12 text-center">
          <h2><strong>{{movies.name}}</h2>
        </div><hr>
        <div class="col-12">
         <p><strong>Released: </strong>{{movies.releaseDate}}</p> 
        </div>
        <div class="col-12">
          <p><strong>Genre: </strong> {{movies.genres}} </p>
        </div>
        <div class="col-12">
          <p><strong>Available in: </strong> {{movies.videoQuality}} </p>
        </div>
        <div class="col-12">
          <p>
            <strong>Languages: </strong>{{movies.languages}}
          </p>
        </div>
        <div class="col-12">
          <p>
            <strong>Director: </strong>{{movies.Director}}
          </p>
        </div>
        <div class="col-12">
          <p>
            <strong>Cast: </strong>{{movies.Actors}}
          </p>
        </div>
        <div class="col-12">
          <p>
            <strong>Synopsis: </strong>{{movies.synopsis}}
          </p>
        </div>
      </div>
      </div>
    <br />
    </div>
  </div>
  <div v-else-if="movies && movies.Response=='False'">
   <div class="container-fluid">
          <div class="row">
            <div class="col-10">
                  <img src="https://i.pinimg.com/originals/86/41/80/86418032b715698a4dfa6684b50c12af.gif" alt="dummy" height="350rem" width="75%">
            </div>
            <div class="col-2 m-auto">
                <h1>No results found for the movie name</h1>
            </div>
    </div>
        </div>
  </div>
  <div v-else class="mt-1 bg-light">
        <div class="jumbotron">
          <div class="container">
            <p>Search Above</p>
          </div>
        </div>
  </div>
</template>

<script>
//import GET_FEEDBACK from 'graphql/queries/feedbacks/feedbacks.gql'
import  GET_MOVIES  from 'graphql/queries/movies/retrieveMovies.gql'
export default {
  name: 'MovieInfo',
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
body{
  font-weight: 200;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
}
  img{
      /* padding: 3px; */
        border: 2px solid lightgray;
        border-radius: 10px;
    }
    img:hover{
        border: 5px solid green;
       /* transform: scale(0.9); */
      
    }
    .info{
      border: 3px solid cadetblue;
      /* padding: 5px; */
      /* border-radius: 5% */
    }
    @media screen and (max-width:576px) {
      img{
        height: 350px;
        width: 100%;
      }
     
    }
</style>
