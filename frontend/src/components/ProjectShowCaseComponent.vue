<template>
    <div id="projects" class="container mx-auto px-4 py-32">
        <h2 class="text-4xl font-bold text-center mb-8">Works</h2>
        <div class="grid gap-10 lg:grid-cols-3 md:grid-cols-2 sm:grid-cols-1">
            <div v-for="(project, index) in projects" :key="index"
                class="relative bg-white shadow-xl rounded-xl overflow-hidden w-96 mx-auto">
                <div class="absolute top-1/2 left-0 h-1/2 w-1.5 bg-theme1"></div>
                <div class="absolute bottom-0 left-0 w-1/2 h-1.5 bg-theme1"></div>
                <div class="absolute top-0 right-0 h-1/2 w-1.5 bg-theme1"></div>
                <div class="absolute top-0 right-0 w-1/2 h-1.5 bg-theme1"></div>
                <div class="flex justify-center p-6">
                    <img :src="project.image" :alt="project.title" class="w-64 h-56 object-cover object-center">
                </div>
                <div class="p-6">
                    <h3 class="text-xl font-semibold mb-2">{{ project.title }}</h3>
                    <p class="text-gray-700 mb-4">{{ project.description }}</p>
                    <a :href="project.link" target="_blank" class="text-blue-500 hover:text-blue-700 font-semibold">
                        View Project
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            projects: [
                {
                    title: 'BookShelf',
                    description: 'BookShelf is a web application that offers a centralized platform for reading and storing various digital documents. Explore a vast collection of files, organized for easy browsing and discovery.',
                    image: require('@/assets/icons/github-logo.png'),
                    link: 'https://github.com/rkshaon/BookShelf',
                },
                {
                    title: 'Chat',
                    description: 'Real time chatting application.',
                    image: require('@/assets/icons/github-logo.png'),
                    link: 'https://github.com/rkshaon/chat',
                },
                {
                    title: 'Blog',
                    description: 'This repository is the code of The Blog project.',
                    image: require('@/assets/icons/github-logo.png'),
                    link: 'https://github.com/rkshaon/blog',
                },
                {
                    title: 'E-Commerce',
                    description: 'E-Commerce platform with all solutions.',
                    image: require('@/assets/icons/github-logo.png'),
                    link: 'https://github.com/rkshaon/ecommerce',
                },
            ],
        };
    },
};
</script>

<style scoped>
/* No additional custom styles are required if the theme color is defined in Tailwind's config */
</style>
