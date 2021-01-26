import theme from '@nuxt/content-theme-docs'

const baseUrl = '/readmetrics-scripts/'

export default theme({
  router: {
    base: baseUrl,
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
    baseUrl,
  },
  docs: {
    primaryColor: '#E24F55',
  },
  fullTextSearchFields: ['title', 'description', 'text'],
})
