<template>
  <div class="h-screen flex flex-col h-full">
    <HomePage />
  </div>
</template>

<script>
import HomePage from '@/pages/HomePage'

export default {
  name: 'App',
  components: {
    HomePage
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
