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
  import MovieBlock from "@/components/MovieBlock.vue"
  export default {
    name: 'MovieRow',
    components: {
      MovieBlock
    } 
  }
</script>
