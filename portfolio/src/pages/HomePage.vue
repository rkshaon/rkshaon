<template>
  <div>
    <NavBarComponent />
    <BannerComponent />
  </div>
</template>

<script>
import NavBarComponent from "@/components/NavBarComponent";
import BannerComponent from "@/components/BannerComponent";

export default {
  name: 'HomePage',
  props: { },
  components: {
    NavBarComponent,
    BannerComponent,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
