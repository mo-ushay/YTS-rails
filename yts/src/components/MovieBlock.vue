<template>
  <div class="d-flex flex-column">
    <div>
      <v-img
        lazy-src="https://i.picsum.photos/id/1074/5472/3648.jpg?hmac=w-Fbv9bl0KpEUgZugbsiGk3Y2-LGAuiLZOYsRk0zo4A"
        height="315"
        width="210"
        src="https://i.picsum.photos/id/1074/5472/3648.jpg?hmac=w-Fbv9bl0KpEUgZugbsiGk3Y2-LGAuiLZOYsRk0zo4A"
      />
    </div>
    <div class="text-left">
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
  export default {
    name: 'MovieBlock',
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
