<template>
  <div>
    <NavBarComponent />
    <BannerComponent />
    <SliderComponent />
    <ProjectShowCaseComponent />
    <SkillsShowCaseComponent />
  </div>
</template>

<script>
import NavBarComponent from "@/components/NavBarComponent";
import BannerComponent from "@/components/BannerComponent";
import SliderComponent from "@/components/SliderComponent";
import ProjectShowCaseComponent from "@/components/ProjectShowCaseComponent";
import SkillsShowCaseComponent from "@/components/SkillsShowCaseComponent";

export default {
  name: 'HomePage',
  props: { },
  components: {
    NavBarComponent,
    BannerComponent,
    SliderComponent,
    ProjectShowCaseComponent,
    SkillsShowCaseComponent
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
