import Vuex from 'vuex'
import actions from './actions'

const createStore = () => {
  return new Vuex.Store({
    state: () => ({
      token: 0,
      locales: ['ar'],
      locale: 'en',
      userDetail: false,
      logedIn: false,
      completeness: false,
      userComplete: false,
      packageDiscount: null,
      accountId: ""
    }),
    mutations: {
      setToken(state, token) {
        state.token = "Bearer " + token
      },
      setLang(state, locale) {
        if (state.locales.indexOf(locale) !== -1) {
          state.locale = locale
        }
      },
      setUser(state, user) {
        // console.log("setUser", user)
        state.userDetail = user;
      },
      setLoged(state, log) {
        state.logedIn = log;
      },
      setCompleteness(state, completeness) {
        state.completeness = completeness;
      },
      setComplete(state, Complete) {
        state.userComplete = Complete;
      },
      setPackageDiscount(state, packageD) {
        state.packageDiscount = packageD;
      },
      set_accountID(state, accountId){
        state.accountId = accountId
      }
    },
    getters: {
      getToken(state) {
        return state.token;
      },
      getAccountId(state) {
        return state.accountId;
      },
      getUser(state) {
        return state.userDetail;
      },
      getLoged(state) {
        return state.logedIn;
      },
      getCompleteness(state) {
        return state.completeness;
      },
      getComplete(state) {
        return state.userComplete;
      },
      getPackageDiscount(state) {
        return state.packageDiscount;
      },
    },
    actions: actions
  })
}

export default createStore