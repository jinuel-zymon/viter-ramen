/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      textColor:{
        accent: "#f2af48",
        dark: "#3b342f"
      },
      backgroundColor:{
        accent: "#f2af48",
        dark: "#3b342f"
      },
      borderColor:{
        accent: "#f2af48",
        dark: "#3b342f"
      },
      backgroundImage:{
        wooden: "url(http://localhost/viter-ramen/public/img/wooden-bg.jpg)",
        pattern: "url(http://localhost/viter-ramen/public/img/pattern-orange.webp)"
      },
    },
  },
  plugins: [],
};
