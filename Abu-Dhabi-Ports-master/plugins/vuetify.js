import Vue from 'vue'

import Vuetify from 'vuetify'
import colors from 'vuetify/es5/util/colors'

Vue.use(Vuetify, {
  
  theme: {
    primary: '#121212', // a color that is not in the material colors palette
    accent: colors.grey.darken3,
    secondary: colors.amber.darken3,
    info: colors.teal.lighten1,
    warning: colors.amber.base,
    error: colors.deepOrange.accent4,
    success: colors.green.accent3,
    jbz: "#053A6E",
    bgColor: "#F4F8F9",
    textColor: "#A7A7A8",
    lightGray: "#f5f5f5"
  }
})
