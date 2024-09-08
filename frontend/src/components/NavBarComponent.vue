<template>
    <nav
        :class="['fixed top-0 left-0 w-full p-4 z-50 transition-colors duration-300', isScrolled ? 'bg-theme1' : 'bg-transparent']">
        <div class="container mx-auto flex justify-between items-center">
            <div class="text-white text-lg font-semibold">
                <a v-if="isScrolled" href="#" class="hover:text-gray-300">
                    <div class="flex-shrink-0 mb-8 lg:mb-0 lg:mr-8 w-16 h-16">
                        <img @click="setTitle()" src="@/assets/project/project.jpg" alt="Rezaul Karim Shaon"
                            class="rounded-full w-full h-full object-cover">
                    </div>
                </a>
            </div>
            <div class="hidden md:flex space-x-4">
                <a v-for="(nav, index) in navs" :key="index" :href="nav.link" @click="setTitle(nav.name)"
                    :class="[
                        'px-6 py-3 font-semibold rounded-lg',
                        isScrolled ? 'text-gray-300 hover:bg-theme2 hover:text-theme3' : 'text-white hover:text-theme3 bg-theme2 hover:bg-theme1']">
                    {{ nav.name }}
                </a>
            </div>
            <div class="md:hidden">
                <button @click="toggleMenu" class="text-gray-300 focus:outline-none">
                    <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 6h16M4 12h16m-7 6h7"></path>
                    </svg>
                </button>
            </div>
        </div>
        <div v-if="isMenuOpen" class="md:hidden bg-gray-800">
            <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3">
                <a href="#about" class="block text-gray-300 hover:text-white">About</a>
                <a href="#projects" class="block text-gray-300 hover:text-white">Projects</a>
                <a href="#skills" class="block text-gray-300 hover:text-white">Skills</a>
                <a href="#contact" class="block text-gray-300 hover:text-white">Contact</a>
            </div>
        </div>
    </nav>
</template>

<script>
export default {
    data() {
        return {
            isMenuOpen: false,
            isScrolled: false,
            navs: [
                {
                    name: 'About',
                    link: '#about',
                },
                {
                    name: 'Projects',
                    link: '#projects',
                },
                {
                    name: 'Skills',
                    link: '#skills',
                },
                {
                    name: 'Contact',
                    link: '#contact',
                },
            ],
        };
    },
    methods: {
        toggleMenu() {
            this.isMenuOpen = !this.isMenuOpen;
        },
        handleScroll() {
            this.isScrolled = window.scrollY > ((window.innerHeight / 4) * 3);
        },
        setTitle(section=null) {
            if (section) {
                document.title = `${section} | Rezaul Karim Shaon`;
            }
            else {
                document.title = "Rezaul Karim Shaon";
            }
        },
    },
    mounted() {
        window.addEventListener('scroll', this.handleScroll);
        this.setTitle();
    },
    beforeUnmount() {
        window.removeEventListener('scroll', this.handleScroll);
    },
};
</script>

<style scoped>
/* Add any custom styles here if needed */
</style>
