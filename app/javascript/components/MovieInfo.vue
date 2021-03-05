<template>
  <div>
    <div class=" container mt-3">
      <div class="row">
        <div class="col-sm-12 col-md-10 col-lg-6">
          <div class="col-12 ">
            <img
              height="520px"
              width="375px"
              src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/wonder-woman-1984-poster-1606931235.jpg?resize=768:*"
            />
          </div>
        </div>
        <div
          class="col-sm-12 col-md-10 col-lg-6 text-left bg-dark text-white info"
        >
          <div class="col-12 text-center">
            <h2>{{ movie.name }}</h2>
          </div>
          <hr />
          <div class="col-12">
            <p><strong>Released: </strong>{{ movie.releaseDate }}</p>
          </div>
          <div class="col-12">
            <p><strong>Genre: </strong>{{ movie.genres }}</p>
          </div>
          <div class="col-12">
            <p><strong>Available in: </strong>{{ movie.videoQuality }}</p>
          </div>
          <div class="col-12">
            <p><strong>Languages: </strong>{{ movie.languages }}</p>
          </div>
          <div class="col-12">
            <p><strong>Director: </strong>Ushay</p>
          </div>
          <div class="col-12">
            <p><strong>Cast: </strong>Ushay Sendoso</p>
          </div>
          <div class="col-12">
            <p><strong>Synopsis: </strong>{{ movie.synopsis }}</p>
          </div>
        </div>
      </div>

      <br />
    </div>
  </div>
</template>

<script>
import GET_MOVIE from "graphql/queries/movies/retrieveMovie.gql";
export default {
  name: "MovieInfo",
  apollo: {
    movie: {
      variables() {
        return {
          id: this.id,
        };
      },
      query: GET_MOVIE,
      update: (data) => data.movie,
    },
  },
  data() {
    return {
      movie: [],
    };
  },
  props: ["id"],
};
</script>

<style scoped>
body {
  font-weight: 200;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}
img {
  border: 2px solid lightgray;
  border-radius: 10px;
}
img:hover {
  border: 5px solid green;
}
.info {
  border: 3px solid cadetblue;
}
@media screen and (max-width: 576px) {
  img {
    height: 350px;
    width: 100%;
  }
}
</style>
