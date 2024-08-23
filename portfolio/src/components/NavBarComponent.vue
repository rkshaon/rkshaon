<template>
    <nav
        :class="['fixed top-0 left-0 w-full p-8 z-50 transition-colors duration-300', isScrolled ? 'bg-theme1' : 'bg-transparent']">
        <div class="container mx-auto flex justify-between items-center">
            <div class="text-white text-lg font-semibold">
                <a href="#" class="hover:text-gray-300"></a>
            </div>
            <div class="hidden md:flex space-x-4">
                <a href="#about"
                    :class="[
                    'px-4 py-3 font-semibold rounded-lg',
                    isScrolled ? 'text-gray-300 hover:text-theme3' : 'text-theme3 hover:text-white bg-theme1 hover:bg-theme2']">
                    About
                </a>
                <a href="#projects"
                    :class="[
                    'px-4 py-3 font-semibold rounded-lg text-gray-300 hover:text-white',
                    isScrolled ? 'text-gray-300 hover:text-theme3' : 'text-theme3 hover:text-white bg-theme1 hover:bg-theme2']">
                    Projects
                </a>
                <a href="#skills"
                    :class="[
                    'px-4 py-3 font-semibold rounded-lg text-gray-300 hover:text-white',
                    isScrolled ? 'text-gray-300 hover:text-theme3' : 'text-theme3 hover:text-white bg-theme1 hover:bg-theme2']">
                    Skills
                </a>
                <a href="#contact"
                    :class="[
                    'px-4 py-3 font-semibold rounded-lg text-gray-300 hover:text-white',
                    isScrolled ? 'text-gray-300 hover:text-theme3' : 'text-theme3 hover:text-white bg-theme1 hover:bg-theme2']">
                    Contact
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
        };
    },
    methods: {
        toggleMenu() {
            this.isMenuOpen = !this.isMenuOpen;
        },
        handleScroll() {
            this.isScrolled = window.scrollY > ((window.innerHeight / 4) * 3);
        }
    },
    mounted() {
        window.addEventListener('scroll', this.handleScroll);
    },
    beforeUnmount() {
        window.removeEventListener('scroll', this.handleScroll);
    },
};
</script>

<style scoped>
/* Add any custom styles here if needed */
</style>
