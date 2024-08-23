/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        theme1: "#1C4645",
        theme2: "#047067",
        theme3: "#FFD146",
      },
    },
  },
  plugins: [],
};
