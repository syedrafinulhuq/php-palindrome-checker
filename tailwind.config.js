/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./public/**/*.{html,php,js}",
    "./src/**/*.{html,php,js}"
  ],
  theme: {
    extend: {},
  },
  plugins: [require("daisyui")],
}
