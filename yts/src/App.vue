<template>
  <div id="app">
    <div class="nav">
      <router-link to="/"> Home </router-link>
      <router-link to="/about"> About </router-link>
    </div>
  </div>
</template>

<script>

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
#nav {
  padding: 30px;
}
#nav a {
  font-weight: bold;
  color: rgb(56, 71, 30);
}
#nav a.router-link-exact-active {
  color: rgb(139, 180, 66);
}
</style>
