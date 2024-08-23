<template>
  <div>
    <NavBarComponent />
  </div>
</template>

<script>
import NavBarComponent from "@/components/NavBarComponent";

export default {
  name: 'HomePage',
  props: { },
  components: {
    NavBarComponent,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
