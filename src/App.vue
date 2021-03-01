<template>
  <div id="app">
    <div id="nav">
      <router-link to="/"> Home </router-link> |
      <router-link to="/about"> About </router-link>
    </div>
    <router-view />
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld';

export default {
  name: 'App',

  components: {
    HelloWorld,
  },

  data: () => ({
    //
  }),
};
</script>
