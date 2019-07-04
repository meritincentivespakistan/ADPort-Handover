import cookie from 'js-cookie'
import { request } from 'http';
export default function ({ store, redirect, req, route }) {

  // let acessPage = ['/about-test', '/faq', '/privacy-policy', '/about-us', '/terms', '/plans', '/plan-request', '/contact', '/test-form', '/how-start', '/resetPassword', '/']

  // if (acessPage.includes(route.path) || route.path.includes('/share')) {

  //   if (!store.state.token) {
  //     let token;
  //     let user;
  //     let getUser;
  //     if (process.server) {
  //       if (req.headers.cookie) {

  //         const tokenCookie = req.headers.cookie.split(';').find(c => c.trim().startsWith('token='))
  //         const userCookie = req.headers.cookie.split(';').find(c => c.trim().startsWith('user='))

  //         if (!tokenCookie) {
  //           store.commit("setLoged", false);
  //         } else {
  //           token = tokenCookie.split('=')[1];
  //           user = userCookie.split('=')[1];
  //           store.commit("setToken", token);
  //           store.commit("setUser", JSON.parse(decodeURIComponent(unescape(user))))
  //           store.commit("setLoged", true);

  //           let getUser = store.state.userDetail;
  //           if (getUser.info) {
  //             if (getUser.info.birth_date.length && getUser.info.country.length && getUser.info.gender.length && getUser.info.religion.length) {
  //               store.commit('setCompleteness', true);
  //             } else {
  //               store.commit('setCompleteness', false);
  //             }
  //           }

  //         }
  //       }
  //     }
  //     else {

  //       token = cookie.get('token');
  //       user = cookie.get('user');
  //       if (token) {
  //         store.commit("setToken", token);
  //         store.commit("setUser", JSON.parsedecodeURIComponent((unescape(user))))
  //         store.commit("setLoged", true);
  //       }

  //       let getUser = store.state.userDetail;
  //       if (getUser.info) {
  //         if (getUser.info.birth_date.length && getUser.info.country.length && getUser.info.gender.length && getUser.info.religion.length) {
  //           store.commit('setCompleteness', true);
  //         } else {
  //           store.commit('setCompleteness', false);
  //         }
  //       }
  //     }
  //   }
  // } else {
  //   if (!store.state.token) {
  //     let token;
  //     let user;
  //     if (process.server) {
  //       if (req.headers.cookie) {

  //         const tokenCookie = req.headers.cookie.split(';').find(c => c.trim().startsWith('token='))
  //         const userCookie = req.headers.cookie.split(';').find(c => c.trim().startsWith('user='))

  //         if (!tokenCookie) {
  //           store.commit("setLoged", false);
  //           return redirect('/')
  //         } else {
  //           token = tokenCookie.split('=')[1];
  //           user = userCookie.split('=')[1];

  //           store.commit("setToken", token);
  //           store.commit("setUser", JSON.parse(decodeURIComponent(unescape(user))))
  //           store.commit("setLoged", true);
  //         }

  //         let getUser = store.state.userDetail;
  //         if (getUser.info) {
  //           if (getUser.info.birth_date.length && getUser.info.country.length && getUser.info.gender.length && getUser.info.religion.length) {
  //             store.commit('setCompleteness', true);
  //           } else {
  //             store.commit('setCompleteness', false);
  //           }
  //         }


  //       }
  //       else {
  //         return redirect('/')
  //       }
  //     }
  //     else {
  //       token = cookie.get('token');
  //       user = cookie.get('user');

  //       if (!token) {
  //         store.commit("setLoged", false);
  //         return redirect('/');
  //       } else {

  //         store.commit("setToken", token);
  //         store.commit("setUser", JSON.parse(decodeURIComponent(unescape(user))))
  //         store.commit("setLoged", true);

  //       }

  //       let getUser = store.state.userDetail;
  //       if (getUser.info) {
  //         if (getUser.info.birth_date.length && getUser.info.country.length && getUser.info.gender.length && getUser.info.religion.length) {
  //           store.commit('setCompleteness', true);
  //         } else {
  //           store.commit('setCompleteness', false);
  //         }
  //       }

  //     }
  //   }
  // }
  // return {}
}


