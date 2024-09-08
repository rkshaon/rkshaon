<template>
    <div class="relative bg-gray-900 text-white h-screen flex items-center justify-center">
        <img src="@/assets/banner/codesnipet.webp" alt="Background Image"
            class="absolute inset-0 w-full h-full object-cover opacity-30" />
        <div class="relative z-10 text-center">
            <h1 class="text-4xl md:text-6xl" style="">👋, <br>I'm <i class="font-bold">Rezaul Karim
                    Shaon</i></h1>
            <p class="mt-4 text-lg md:text-2xl font-bold text-theme3">Problem Solver | Software Engineer | Tech
                Enthusiast</p>
            <p class="mt-4 text-lg md:text-2xl mb-20 font-bold text-theme3">Python | JavaScript | PostgreSQL</p>
            <a href="#projects"
                class="inline-block mt-8 px-6 py-3 bg-theme2 hover:bg-theme1 hover:text-theme3 text-white font-semibold rounded-lg">
                VIEW MY WORK
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
