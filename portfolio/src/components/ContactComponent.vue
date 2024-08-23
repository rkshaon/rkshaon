<template>
    <div id="contact">
        <div class="container mx-auto px-4 py-8">
            <h2 class="text-4xl font-bold text-center mb-8">Get in Touch</h2>
            <div class="flex flex-col items-center space-y-4">
                <!-- Contact Information -->
                <div class="text-center">
                    <p class="text-lg text-gray-700">Feel free to reach out to me on any of the platforms below:</p>
                    <p class="mt-2 text-xl font-semibold text-gray-900">Email: <a href="mailto:youremail@example.com"
                            class="text-blue-500 hover:text-blue-700">youremail@example.com</a></p>
                    <p class="mt-1 text-xl font-semibold text-gray-900">Phone: <a href="tel:+1234567890"
                            class="text-blue-500 hover:text-blue-700">+1 234 567 890</a></p>
                </div>

                <!-- Social Media Links -->
                <div class="flex space-x-6">
                    <a :href="link.url" v-for="(link, index) in socialLinks" :key="index" target="_blank"
                        class="text-gray-600 hover:text-blue-500">
                        <img :src="link.icon" :alt="link.name" class="w-8 h-8">
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
            socialLinks: [
                {
                    name: 'LinkedIn',
                    url: 'https://www.linkedin.com/in/yourprofile',
                    // icon: require('@/assets/linkedin-icon.svg'),
                },
                {
                    name: 'GitHub',
                    url: 'https://github.com/yourprofile',
                    // icon: require('@/assets/github-icon.svg'),
                },
                {
                    name: 'Twitter',
                    url: 'https://twitter.com/yourprofile',
                    // icon: require('@/assets/twitter-icon.svg'),
                },
                {
                    name: 'Facebook',
                    url: 'https://facebook.com/yourprofile',
                    // icon: require('@/assets/facebook-icon.svg'),
                },
                {
                    name: 'Instagram',
                    url: 'https://instagram.com/yourprofile',
                    // icon: require('@/assets/instagram-icon.svg'),
                },
            ],
        };
    },
};
</script>

<style scoped>
/* Add any custom styles if needed */
</style>
