/*
 * 1. sets i18n.locale and state.locale if possible
 * 2. redirects if not with locale
 */
export default function ({ app, store}) {
    const locale = 'ar'; 
    store.commit('setLang', locale); // set store
    app.i18n.locale = store.state.locale;
  }