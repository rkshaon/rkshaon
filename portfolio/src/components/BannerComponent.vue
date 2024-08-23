<template>
    <div class="relative bg-gray-900 text-white h-96 flex items-center justify-center">
        <img src="@/assets/banner/custom-illustration.webp" alt="Background Image"
            class="absolute inset-0 w-full h-full object-cover opacity-50" />
        <div class="relative z-10 text-center">
            <h1 class="text-4xl md:text-6xl font-bold">Hi, I'm Rezaul Karim Shaon</h1>
            <p class="mt-4 text-lg md:text-2xl">Software Engineer | Web Developer | Tech Enthusiast</p>
            <a href="#projects"
                class="inline-block mt-8 px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg">
                View My Work
            </a>
        </div>
    </div>
</template>

<script>
export default {
    name: 'BannerComponent',
};
</script>

<style scoped>
/* Add any custom styles if needed */
</style>
