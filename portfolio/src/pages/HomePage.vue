<template>
  <div>
    <NavBarComponent />
    <BannerComponent />
    <SliderComponent />
    <ProjectShowCaseComponent />
    <SkillsShowCaseComponent />
    <ContactAndSocialLinks />
  </div>
</template>

<script>
import NavBarComponent from "@/components/NavBarComponent";
import BannerComponent from "@/components/BannerComponent";
import SliderComponent from "@/components/SliderComponent";
import ProjectShowCaseComponent from "@/components/ProjectShowCaseComponent";
import SkillsShowCaseComponent from "@/components/SkillsShowCaseComponent";
import ContactAndSocialLinks from "@/components/ContactAndSocialLinks";

export default {
  name: 'HomePage',
  props: { },
  components: {
    NavBarComponent,
    BannerComponent,
    SliderComponent,
    ProjectShowCaseComponent,
    SkillsShowCaseComponent,
    ContactAndSocialLinks,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
