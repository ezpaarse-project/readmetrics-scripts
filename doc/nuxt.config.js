import theme from '@nuxt/content-theme-docs'

export default theme({
  router: {
    base: '/readmetrics-scripts/',
  },
  i18n: {
    locales: () => [
      {
        code: 'fr',
        iso: 'fr-FR',
        file: 'fr-FR.js',
        name: 'Français',
      },
      {
        code: 'en',
        iso: 'en-US',
        file: 'en-US.js',
        name: 'English',
      },
    ],
    defaultLocale: 'en',
  },
  docs: {
    primaryColor: '#E24F55',
  },
  fullTextSearchFields: ['title', 'description', 'text'],
})
