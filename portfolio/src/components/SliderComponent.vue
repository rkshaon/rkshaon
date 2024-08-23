<template>
    <div class="relative overflow-hidden">
        <!-- Slider Container -->
        <div class="flex transition-transform duration-500 ease-in-out"
            :style="{ transform: `translateX(-${currentIndex * 100}%)` }">
            <!-- Slider Items -->
            <div v-for="(slide, index) in slides" :key="index"
                class="relative min-w-full h-96 flex items-center justify-center bg-gray-900 text-white">
                <img :src="slide.image" :alt="slide.title"
                    class="absolute inset-0 w-full h-full object-cover opacity-50" />
                <div class="relative z-10 text-center">
                    <h2 class="text-4xl md:text-6xl font-bold">{{ slide.title }}</h2>
                    <p class="mt-4 text-lg md:text-2xl">{{ slide.description }}</p>
                </div>
            </div>
        </div>
        <!-- Navigation Arrows -->
        <button @click="prevSlide"
            class="absolute top-1/2 left-4 transform -translate-y-1/2 text-white bg-gray-800 bg-opacity-50 hover:bg-opacity-75 rounded-full p-2">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path>
            </svg>
        </button>
        <button @click="nextSlide"
            class="absolute top-1/2 right-4 transform -translate-y-1/2 text-white bg-gray-800 bg-opacity-50 hover:bg-opacity-75 rounded-full p-2">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
            </svg>
        </button>
    </div>
</template>

<script>
export default {
    data() {
        return {
            currentIndex: 0,
            slides: [
                {
                    image: require('@/assets/abstract-lines.webp'),
                    title: 'Abstract',
                    description: 'Description of Project 1',
                },
                {
                    image: require('@/assets/abstract-tech.webp'),
                    title: 'Abstract Tech',
                    description: 'Description of Project 2',
                },
                {
                    image: require('@/assets/cityscrape.webp'),
                    title: 'City Scrape',
                    description: 'Description of Project 3',
                },
                {
                    image: require('@/assets/codesnipet.webp'),
                    title: 'Code Snipet',
                    description: 'Description of Project 4',
                },
                {
                    image: require('@/assets/custom-illustration.webp'),
                    title: 'Illustration',
                    description: 'Description of Project 5',
                },
                {
                    image: require('@/assets/software-engineer.webp'),
                    title: 'Software Engineer',
                    description: 'Description of Project 6',
                },
                {
                    image: require('@/assets/workspace-setup.webp'),
                    title: 'Workspace Setup',
                    description: 'Description of Project 7',
                },
            ],
        };
    },
    mounted() {
        this.startAutoSlide();
    },
    beforeUnmount() {
        clearInterval(this.autoSlideInterval);
    },
    methods: {
        nextSlide() {
            this.currentIndex =
                (this.currentIndex + 1) % this.slides.length;
        },
        prevSlide() {
            this.currentIndex =
                (this.currentIndex - 1 + this.slides.length) % this.slides.length;
        },
        startAutoSlide() {
            this.autoSlideInterval = setInterval(() => {
                this.nextSlide();
            }, 3000); // Change slide every 3 seconds
        },
    },
};
</script>

<style scoped>
/* Add any custom styles if needed */
</style>
