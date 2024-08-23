<template>
  <div>
    <NavBarComponent />
    <BannerComponent />
    <SliderComponent />
    <ProjectShowCaseComponent />
  </div>
</template>

<script>
import NavBarComponent from "@/components/NavBarComponent";
import BannerComponent from "@/components/BannerComponent";
import SliderComponent from "@/components/SliderComponent";
import ProjectShowCaseComponent from "@/components/ProjectShowCaseComponent";

export default {
  name: 'HomePage',
  props: { },
  components: {
    NavBarComponent,
    BannerComponent,
    SliderComponent,
    ProjectShowCaseComponent,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
