<template>
  <div class="d-flex flex-column">
    <div>
      <v-img
        lazy-src="https://ca.slack-edge.com/T3WCCF3L2-U4T4YCFAM-5981b7f7f686-512"
        height="315"
        width="210"
        src="https://ca.slack-edge.com/T3WCCF3L2-U4T4YCFAM-5981b7f7f686-512"
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
