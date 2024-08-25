<template>
    <div id="contact" class="bg-theme1">
        <div class="container mx-auto px-4 py-32">
            <h2 class="text-4xl font-bold text-center mb-8 text-white">Get in Touch</h2>
            <div class="flex flex-col lg:flex-row lg:space-x-8">
                <!-- Left Part: Contact Information -->
                <div class="lg:w-1/2 flex flex-col justify-center items-start space-y-4">
                    <div class="text-left">
                        <p class="text-lg text-gray-200">Feel free to reach out to me on any of the platforms below:</p>
                        <p class="mt-2 text-xl font-semibold text-gray-100">Email:
                            <a href="mailto:rkshaon.ist@gmail.com" class="text-blue-300 hover:text-blue-500">
                                rkshaon.ist@gmail.com
                            </a>
                        </p>
                        <p class="mt-1 text-xl font-semibold text-gray-100">Phone:
                            <a href="tel:+1234567890" class="text-blue-300 hover:text-blue-500">
                                +880 1521 205 142
                            </a>
                        </p>
                    </div>
                    <!-- Social Media Links -->
                    <div class="flex space-x-6">
                        <a :href="link.url" v-for="(link, index) in socialLinks" :key="index" target="_blank"
                            class="text-gray-200 hover:text-blue-300">
                            <img :src="link.icon" :alt="link.name" class="w-8 h-8">
                        </a>
                    </div>
                </div>
                <!-- Right Part: Contact Form -->
                <div class="lg:w-1/2 mt-8 lg:mt-0">
                    <form @submit.prevent="submitForm" class="bg-white shadow-md rounded-xl px-8 pt-6 pb-8 mb-4 bg-theme3">
                        <div class="mb-4">
                            <label class="block text-theme1 text-sm font-bold mb-2" for="name">Name</label>
                            <input v-model="form.name" type="text" id="name" placeholder="Your name"
                                class="shadow appearance-none border rounded-xl w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                required>
                        </div>
                        <div class="mb-4">
                            <label class="block text-theme1 text-sm font-bold mb-2" for="email">Email</label>
                            <input v-model="form.email" type="email" id="email" placeholder="Your email"
                                class="shadow appearance-none border rounded-xl w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                required>
                        </div>
                        <div class="mb-6">
                            <label class="block text-theme1 text-sm font-bold mb-2" for="message">Message</label>
                            <textarea v-model="form.message" id="message" placeholder="Your message"
                                class="shadow appearance-none border rounded-xl w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                required></textarea>
                        </div>
                        <div class="flex items-center justify-between">
                            <button type="submit"
                                class="bg-theme2 hover:bg-blue-700 text-theme3 font-bold py-2 px-4 rounded-xl focus:outline-none focus:shadow-outline">
                                Send Message
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            form: {
                name: '',
                email: '',
                message: '',
            },
            socialLinks: [
                {
                    name: 'LinkedIn',
                    url: 'https://linkedin.com/in/rkshaon',
                    icon: require('@/assets/icons/linkedin-logo.jpg'),
                },
                {
                    name: 'GitHub',
                    url: 'https://github.com/rkshaon',
                    icon: require('@/assets/icons/github-logo.png'),
                },
            ],
        };
    },
    methods: {
        submitForm() {
            // Handle form submission logic here
            alert(`Message sent by ${this.form.name}`);
            this.form.name = '';
            this.form.email = '';
            this.form.message = '';
        },
    },
};
</script>

<style scoped>
/* Add any custom styles if needed */
</style>
