<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top mb-1">
    <a class="navbar-brand" href="#"
      ><img src="https://yts.mx/assets/images/website/logo-YTS.svg" alt="YTS"
    /></a>
    <button
      class="navbar-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <router-link to="/" class="nav-link" href="#">Home</router-link>
        </li>
        <li class="nav-item">
          <router-link to="/movies" class="nav-link" href="#"
            >Movies</router-link
          >
        </li>
      </ul>
    </div>
  </nav>
</template>

<script>
export default {
  name: "Navigation",
};
</script>

<style scoped></style>
