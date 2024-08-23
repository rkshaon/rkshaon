<template>
  <div>
    <NavBarComponent />
    <BannerComponent />
    <!-- <SliderComponent /> -->
    <AboutMe />
    <ProjectShowCaseComponent />
    <SkillsShowCaseComponent />
    <ContactAndSocialLinks />
  </div>
</template>

<script>
import NavBarComponent from "@/components/NavBarComponent";
import BannerComponent from "@/components/BannerComponent";
// import SliderComponent from "@/components/SliderComponent";
import AboutMe from "@/components/AboutMe";
import ProjectShowCaseComponent from "@/components/ProjectShowCaseComponent";
import SkillsShowCaseComponent from "@/components/SkillsShowCaseComponent";
import ContactAndSocialLinks from "@/components/ContactAndSocialLinks";

export default {
  name: 'HomePage',
  props: { },
  components: {
    NavBarComponent,
    BannerComponent,
    // SliderComponent,
    AboutMe,
    ProjectShowCaseComponent,
    SkillsShowCaseComponent,
    ContactAndSocialLinks,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
