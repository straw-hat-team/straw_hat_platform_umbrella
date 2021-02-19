const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  purge: false,
  plugins: [require('@tailwindcss/aspect-ratio')],
  theme: {
    extend: {
      listStyleType: {
        ...defaultTheme.listStyleType,
        roman: 'upper-roman',
      },
      fill: (theme) => ({
        ...defaultTheme.fill,
        transparent: 'transparent',
      }),
      fontFamily: {
        sans: ['Inter', ...defaultTheme.fontFamily.sans],
      },
      inset: {
        ...defaultTheme.inset,
        '1/2': '50%',
      },
      zIndex: {
        ...defaultTheme.zIndex,
        '-1': '-1',
      },
    },
  },
};
