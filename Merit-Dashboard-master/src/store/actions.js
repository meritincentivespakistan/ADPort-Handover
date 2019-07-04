import axios from 'axios'
var baseUrl = 'http://api.nomadicbees.com/api/'

let header2 = {
  'async': true,
  'crossDomain': true,
  'headers': {
    'accept': 'application/json',
    'content-type': 'application/json'
  }
}

export default {
  // auth user
  userLogin(vuexContext, data) {
    return axios.post(baseUrl + 'oauth/token', data, header2)
  },

  // manage password
  resetPassword(vuexContext, data) {
    return axios.post(baseUrl + 'password/reset', data, header2)
  },
  changePassword(vuexContext, data) {
    return axios.post(baseUrl + 'password/change', data, header2)
  },

  // account
  getAccounts(vuexContext) {
    return axios.get(baseUrl + 'accounts', header2)
  },
  createAccount(vuexContext) {
    return axios.post(baseUrl + 'accounts', header2)
  },
  updateAccount(vuexContext, id) {
    return axios.put(baseUrl + 'accounts/' + id, header2)
  },
  deleteAccount(vuexContext, id) {
    return axios.delete(baseUrl + 'accounts/' + id, header2)
  },

  // agency
  getAgencies(vuexContext) {
    return axios.get(baseUrl + 'agencies', header2)
  },
  showAgency(vuexContext, id) {
    return axios.get(baseUrl + 'agencies/' + id, header2)
  },
  createAgency(vuexContext) {
    return axios.post(baseUrl + 'agencies', header2)
  },
  updateAgency(vuexContext, id) {
    return axios.put(baseUrl + 'agencies/' + id, header2)
  },
  deleteAgency(vuexContext, id) {
    return axios.delete(baseUrl + 'client/' + id + '/admins', header2)
  },

  // client
  getClient(vuexContext) {
    return axios.get(baseUrl + 'clients', header2)
  },
  createClient(vuexContext) {
    return axios.post(baseUrl + 'clients', header2)
  },
  updateClient(vuexContext, id) {
    return axios.put(baseUrl + 'clients/' + id, header2)
  },
  deleteClient(vuexContext, id) {
    return axios.delete(baseUrl + 'clients/' + id, header2)
  },

  // client admins
  getClientAdmins(vuexContext, id) {
    return axios.get(baseUrl + 'clients/' + id + '/admins', header2)
  },
  createClientAdmin(vuexContext, id) {
    return axios.post(baseUrl + 'clients/' + id + '/admins', header2)
  },
  updateClientAdmmin(vuexContext, [id, adminId]) {
    return axios.put(baseUrl + 'clients/' + id + '/admins/' + adminId, header2)
  },
  deleteClientAdmin(vuexContext, [id, adminId]) {
    return axios.delete(baseUrl + 'clients/' + id + '/admins/' + adminId, header2)
  },

  // permissions
  getPermissions(vuexContext) {
    return axios.get(baseUrl + 'permissions', header2)
  },
  createPermissions(vuexContext) {
    return axios.post(baseUrl + 'permissions', header2)
  },
  updatePermissions(vuexContext, id) {
    return axios.put(baseUrl + 'permissions/' + id, header2)
  },
  deletePermissions(vuexContext, id) {
    return axios.delete(baseUrl + 'permissions/' + id, header2)
  },

  // program
  getProgramms(vuexContext) {
    return axios.get(baseUrl + 'program', header2)
  },
  createProgram(vuexContext) {
    return axios.post(baseUrl + 'program', header2)
  },
  updateProgram(vuexContext, id) {
    return axios.put(baseUrl + 'program/' + id, header2)
  },
  deleteProgram(vuexContext, id) {
    return axios.delete(baseUrl + 'program/' + id, header2)
  },

  // roles
  getRoles(vuexContext) {
    return axios.get(baseUrl + 'roles', header2)
  },
  createRole(vuexContext) {
    return axios.post(baseUrl + 'roles', header2)
  },
  updateRole(vuexContext, id) {
    return axios.put(baseUrl + 'roles/' + id, header2)
  },
  deleteRole(vuexContext, id) {
    return axios.delete(baseUrl + 'roles/' + id, header2)
  },

  // catalogues
  getCatalogues(vuexContext) {
    return axios.get(baseUrl + 'catalogues', header2)
  },
  createCatalogue(vuexContext) {
    return axios.post(baseUrl + 'catalogues', header2)
  },
  updateCatalogue(vuexContext, id) {
    return axios.put(baseUrl + 'catalogues/' + id, header2)
  },
  deleteCatalogue(vuexContext, id) {
    return axios.delete(baseUrl + 'catalogues/' + id, header2)
  }
}
