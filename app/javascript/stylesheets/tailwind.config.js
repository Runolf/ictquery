const colors = require('tailwindcss/colors')

module.exports = {
  purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ],
  important: true, // add ' !important to all css class '
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      gray: colors.trueGray,
      coolGray: colors.coolGray,
      warmGray: colors.warmGray,
      red: colors.red,
      orange: colors.orange,
      blue: colors.sky,
      teal: colors.teal,
      yellow: colors.amber,
      green: colors.green,
      lime: colors.lime,
      white: colors.white,
      black: colors.black
    },
    keyframes: {
      'fade-in-down': {
          '0%': {
              opacity: '0',
              transform: 'translateY(-10px)'
          },
          '100%': {
              opacity: '1',
              transform: 'translateY(0)'
          },
      },
      roll: {
        '0%, 100%': { transform: 'translateX(0) rotate(0deg)' },
        '50%': { transform: 'translateX(20rem) rotate(385deg)' }
      }
  },
  animation: {
      'fade-in-down': 'fade-in-down 1s ease-out',
      roll: 'roll 3s ease-in-out infinite'
  }
  },
  variants: {
    extend: {
      backgroundColor: ['checked'],
      borderColor: ['checked'],
    },
  },
  plugins: [
    require('@tailwindcss/custom-forms'),
  ],
}
