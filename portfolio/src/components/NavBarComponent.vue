<template>
    <nav class="bg-gray-800 p-4">
        <div class="container mx-auto flex justify-between items-center">
            <div class="text-white text-lg font-semibold">
                <a href="#" class="hover:text-gray-300">My Portfolio</a>
            </div>
            <div class="space-x-4">
                <a href="#about" class="text-gray-300 hover:text-white">About</a>
                <a href="#projects" class="text-gray-300 hover:text-white">Projects</a>
                <a href="#skills" class="text-gray-300 hover:text-white">Skills</a>
                <a href="#contact" class="text-gray-300 hover:text-white">Contact</a>
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
        <div v-if="isMenuOpen" class="md:hidden">
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
        };
    },
    methods: {
        toggleMenu() {
            this.isMenuOpen = !this.isMenuOpen;
        },
    },
};
</script>

<style scoped>
/* Add any custom styles here if needed */
</style>
