<template>
    <div id="skills">
        <div class="container mx-auto px-4 py-8">
            <h2 class="text-4xl font-bold text-center mb-8">My Skills</h2>
            <div class="grid gap-8 lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2">
                <div v-for="(skill, index) in skills" :key="index"
                    class="bg-white shadow-lg rounded-lg p-6 text-center">
                    <img :src="skill.icon" :alt="skill.name" class="w-16 h-16 mx-auto mb-4">
                    <h3 class="text-xl font-semibold mb-2">{{ skill.name }}</h3>
                    <p class="text-gray-700">{{ skill.level }}</p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            skills: [
                {
                    name: 'JavaScript',
                    level: 'Advanced',
                    // icon: require('@/assets/javascript-icon.svg'),
                },
                {
                    name: 'Vue.js',
                    level: 'Advanced',
                    // icon: require('@/assets/vue-icon.svg'),
                },
                {
                    name: 'HTML & CSS',
                    level: 'Advanced',
                    // icon: require('@/assets/html-css-icon.svg'),
                },
                {
                    name: 'Tailwind CSS',
                    level: 'Intermediate',
                    // icon: require('@/assets/tailwind-icon.svg'),
                },
                {
                    name: 'Node.js',
                    level: 'Intermediate',
                    // icon: require('@/assets/node-icon.svg'),
                },
                {
                    name: 'Python',
                    level: 'Intermediate',
                    icon: require('@/assets/icons/python.png'),
                },
                {
                    name: 'Git & GitHub',
                    level: 'Advanced',
                    icon: require('@/assets/icons/github-logo.png'),
                },
            ],
        };
    },
};
</script>

<style scoped>
/* Add any custom styles if needed */
</style>
