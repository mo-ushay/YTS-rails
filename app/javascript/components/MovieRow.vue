<template>
  <v-container>
    <v-row>
      <v-col class="mb-3">
        <MovieBlock />
      </v-col>
      <v-col class="mb-3">
        <MovieBlock />
      </v-col>
      <v-col class="mb-3">
        <MovieBlock />
      </v-col>
      <v-col class="mb-3">
        <MovieBlock />
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import MovieBlock from "components/MovieBlock.vue";
import MovieInfo from "components/MovieInfo.vue";
export default {
  name: "MovieRow",
  components: {
    MovieBlock,
    MovieInfo,
  },
};
</script>
