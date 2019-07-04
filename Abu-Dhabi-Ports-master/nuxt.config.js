const pkg = require('./package')

module.exports = {
  mode: 'universal',

  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,
    script: [
      { src: "/js/jquery.min.js" },
      { src: "/js/jquery.validate.min.js" },
      // { src: "/js/bootstrap.min.js" },
      { src: "/js/animsition.min.js" },
      { src: "https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" },
      { src: "https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" },

    ],
    link: [
      // { rel: 'stylesheet', type: 'text/css', href: '/css/bootstrap-rtl.min.css' },
      { rel: 'shortcut icon', href: '/favicon.png' },
      { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' },

    ],
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1.0' },
      { 'http-equiv': 'X-UA-Compatible', content: 'ie=edge' },
      { hid: 'description', name: 'description', content: pkg.description },
      { name: 'google-signin-client_id', content: '980971345533-lrlroq3c6ms89uqeolgvkcmbtcmrtpjt.apps.googleusercontent.com' },
    ],
  },

  /*
  ** Customize the progress-bar color
  */
  // loading: '~/components/common/loadingPage.vue',

  /*
  ** Global CSS
  */
  css: [
    // "@/assets/lib/css/bootstrap.css",
    // "@/assets/lib/css/animsition.min.css",
    'vuetify/src/stylus/main.styl',
    'bootstrap/dist/css/bootstrap.css'


  ],

  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
    '@/plugins/i18n.js',
    '@/plugins/validator.js',
    '@/plugins/socialShare.js',
    '@/plugins/vuetify.js'

  ],

  /*
  ** Nuxt.js modules
  */
  modules: [
    '@nuxtjs/axios',
  ],
  /*
  ** Axios module configuration
  */
  axios: {
    // See https://github.com/nuxt-community/axios-module#options
  },

  env: {
    baseUrl: 'https://backend.hostersstack.com/api/'
  },

  /*
  ** Build configuration
  */
  build: {
    vendor: ['axios', 'vue-i18n'],
    /*
    ** You can extend webpack config here
    */
    extend(config, ctx) {

    }
  },

  router: {
    // middleware: ['auth', 'i18n'],
    extendRoutes(routes, resolve) {
      routes.push({
        name: '404 Page Not Found',
        path: '*',
        component: resolve(__dirname, 'pages/404.vue')
      })
    }
  },
}
