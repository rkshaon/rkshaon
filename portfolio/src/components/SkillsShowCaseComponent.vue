<template>
    <div id="skills" class="container mx-auto px-4 py-32">
        <h2 class="text-4xl font-bold text-center mb-8">Work Experience on</h2>
        <div class="grid gap-8 lg:grid-cols-6 md:grid-cols-3 sm:grid-cols-2">
            <div v-for="(skill, index) in skills" :key="index" class="bg-white shadow-lg rounded-lg p-6 text-center">
                <img :src="skill.icon" :alt="skill.name" class="w-16 h-16 mx-auto mb-4">
                <h3 class="text-xl font-semibold mb-2">{{ skill.name }}</h3>
                <!-- <p class="text-gray-700">{{ skill.level }}</p> -->
                <p v-if="skill.description" class="text-gray-700">{{ skill.description }}</p>
                <p v-else class="text-gray-700">No description provided.</p>
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
                    name: 'Python',
                    icon: require('@/assets/icons/python.png'),
                    description: 'Programming Language',
                },
                {
                    name: 'Django',
                    description: 'Python web framework',
                    icon: require('@/assets/icons/django.svg'),
                },
                {
                    name: 'Django REST Framework',
                    description: 'Rest Framework Library',
                    icon: require('@/assets/icons/drf.png'),
                },
                {
                    name: 'Django Channels',
                    description: 'Library for implement WebSocket in Django',
                    icon: require('@/assets/icons/django-channels.jpg'),
                },
                {
                    name: 'JavaScript',
                    icon: require('@/assets/icons/js.png'),
                    description: 'Programming Language',
                },
                {
                    name: 'Vue.js',
                    icon: require('@/assets/icons/vue.png'),
                    description: 'Frontend Framework',
                },
                {
                    name: 'PostgreSQL',
                    icon: require('@/assets/icons/postgresql.png'),
                    description: 'Database',
                },
                // {
                //     name: 'Tailwind CSS',
                //     level: 'Intermediate',
                //     // icon: require('@/assets/tailwind-icon.svg'),
                // },
                // {
                //     name: 'Node.js',
                //     level: 'Intermediate',
                //     // icon: require('@/assets/node-icon.svg'),
                // },

                {
                    name: 'Git',
                    description: 'Version Control System',
                    icon: require('@/assets/icons/git.svg'),
                },
                {
                    name: 'GitHub',
                    description: 'Version Control System',
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
