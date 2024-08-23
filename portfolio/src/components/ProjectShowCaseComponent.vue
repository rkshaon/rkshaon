<template>
    <div id="projects">
        <div class="container mx-auto px-4 py-8">
            <h2 class="text-4xl font-bold text-center mb-8">My Projects</h2>
            <div class="grid gap-8 lg:grid-cols-3 md:grid-cols-2 sm:grid-cols-1">
                <div v-for="(project, index) in projects" :key="index"
                    class="bg-white shadow-lg rounded-lg overflow-hidden">
                    <img :src="project.image" :alt="project.title" class="w-full h-48 object-cover">
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
    </div>
</template>

<script>
export default {
    data() {
        return {
            projects: [
                {
                    title: 'Project 1',
                    description: 'A brief description of Project 1.',
                    image: require('@/assets/project/project.jpg'),
                    link: 'https://example.com/project1',
                },
                {
                    title: 'Project 2',
                    description: 'A brief description of Project 2.',
                    image: require('@/assets/project/project.jpg'),
                    link: 'https://example.com/project2',
                },
                {
                    title: 'Project 3',
                    description: 'A brief description of Project 3.',
                    image: require('@/assets/project/project.jpg'),
                    link: 'https://example.com/project3',
                },
                {
                    title: 'Project 4',
                    description: 'A brief description of Project 4.',
                    image: require('@/assets/project/project.jpg'),
                    link: 'https://example.com/project4',
                },
                {
                    title: 'Project 5',
                    description: 'A brief description of Project 5.',
                    image: require('@/assets/project/project.jpg'),
                    link: 'https://example.com/project5',
                },
                {
                    title: 'Project 6',
                    description: 'A brief description of Project 6.',
                    image: require('@/assets/project/project.jpg'),
                    link: 'https://example.com/project6',
                },
            ],
        };
    },
};
</script>

<style scoped>
/* Add any custom styles if needed */
</style>
