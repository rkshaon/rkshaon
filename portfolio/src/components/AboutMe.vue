<template>
    <div id="about">
        <div class="container mx-auto px-4 py-12">
            <div class="flex flex-col lg:flex-row items-center">
                <!-- Profile Image -->
                <div class="flex-shrink-0 mb-8 lg:mb-0 lg:mr-8 w-48 h-48">
                    <img src="@/assets/project/project.jpg" alt="Your Name"
                        class="rounded-full w-full h-full object-cover">
                </div>
                <!-- About Me Content -->
                <div>
                    <h2 class="text-4xl font-bold mb-4">About Me</h2>
                    <p class="text-lg text-gray-700 leading-relaxed mb-4">
                        Hello! I'm [Your Name], a passionate Software Engineer with a strong background in [mention any
                        specific area of expertise, like web development, data science, etc.]. I have been working in
                        the
                        industry for [X years] and have had the pleasure of working on various exciting projects.
                    </p>
                    <p class="text-lg text-gray-700 leading-relaxed mb-4">
                        My journey in the tech world began when [mention any specific event or time that got you into
                        tech].
                        Since then, I've developed a deep love for [mention any specific technologies, methodologies, or
                        programming languages you specialize in]. I enjoy solving complex problems and continuously
                        learning
                        new things.
                    </p>
                    <p class="text-lg text-gray-700 leading-relaxed">
                        When I'm not coding, you can find me [mention hobbies or interests, like hiking, reading,
                        contributing to open source, etc.]. I'm always eager to take on new challenges and collaborate
                        with
                        like-minded individuals.
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'AboutMe',
};
</script>

<style scoped>
/* Add any custom styles if needed */
</style>
