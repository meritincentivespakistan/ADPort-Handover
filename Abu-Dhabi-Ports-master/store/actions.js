import axios from 'axios'
import Cookies from 'js-cookie'
var AUTH=Cookies.get('AUTH');

let header = {
    "async": true,
    "crossDomain": true,
    "headers": {
        "authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjFkMzQwZWM2NjlhNzAyZTdjN2M1NWY3NDVmMjg2ZjdkZWNjMzA4NWY4ZGFhMzM0MjI4YWIwZDg2MDNhNWE3ZGQ5Nzk2M2U1MWNhMDM2NThjIn0.eyJhdWQiOiIxIiwianRpIjoiMWQzNDBlYzY2OWE3MDJlN2M3YzU1Zjc0NWYyODZmN2RlY2MzMDg1ZjhkYWEzMzQyMjhhYjBkODYwM2E1YTdkZDk3OTYzZTUxY2EwMzY1OGMiLCJpYXQiOjE1NDIzMzI4NDksIm5iZiI6MTU0MjMzMjg0OSwiZXhwIjoxNTczODY4ODQ5LCJzdWIiOiIxNSIsInNjb3BlcyI6W119.OWr6UbFm5gaT3j25VWXJ_Bkyj9Zt0nA5C8cUtp5QZYe_-kLdEXP_URNIG8rJdZ4gaO9B_nuRT-UCeWXZhCJjxVGxMkyrwX2UaanrNdcHSkBE_e2eIBLweP4nEChiTwUV9iRDdVJ2V89vZHJdTrH84fIZheLO4S9ihrK658z6EoWPL3HvT81HifczXhpBjSwyXXHnbTPoW9snKKpgVVIHswM_ICBzls38aXZUxEqp6lAjI_v_tRUQN5dlqeVwMPlrVczlzSzTnISVNjOBXzzM9FK62zPjpkPcuAhFsnwKPRJzx_ABNvsKrv5-YK29lotTawjhuNwF5zDa1QWHaCRkt-bnIVWdlyKkSu4EL4ocKUOBDXfvu_tWIewQ5nAQUAo6wcIj9YjUcc-9dl-bgP3D9H6het54QfRYvVxdk86IWHkbU460MUpC5ROJ7Ac-faeg9vLziyfersIHIvZR-pnnASlpf1s0ZXJc4xEzebwqwSc1UB8AwJJuBkBXoWfiOY9FrC-2OD69MJo3mtO7WIK8kmrFp9jcpub2_yBIOlQbfb-fzl1PbZHIexnOcSWtcX2lCCMMKhWkl90jTCunjcz5W_bVUKcBc2TeHXuv-2mROnQtlGR0lcMUa9DUWkcRZzuou4szB8-1MQvjy3idWW5FjQ_uS8ynkitH4ltPR8EnJmk",
        "accept": "application/json",
        "content-type": "application/json"
    }
}

let header2 = {
    'async': true,
    'crossDomain': true,
    'headers': {
      'accept': 'application/json',
      'content-type': 'application/json'
    }
  }
  let headerAuth ={
    'async': true,
    'crossDomain': true,
    'headers': {
      'Accept': 'application/json',
      'content-type': 'application/json',
      
    },
    "processData": false,
    "contentType": false,
    "mimeType": "multipart/form-data"
  }
const actions = {
  
    //nominations
    
    getHeros(vuexContext){
      return axios.get(process.env.baseUrl + 'nominations/1/wall', header2)
    },
    
    getCompaigns(vuexContext){
      return axios.get(process.env.baseUrl + 'nominations', header2)
    },
    getCompaignValues(vuexContext){
      let id=Cookies.get('compValSet')
      return axios.get(process.env.baseUrl + 'nominations/'+id+'/type', header2)
    },
    getCompaignlevels(vuexContext,id){
      return axios.get(process.env.baseUrl + 'nominations/'+id+'/awards_levels', header2)
    },
    createNomination(vuexContext, data){
      return axios.post(process.env.baseUrl + 'user_nominations', data, header2)
  },

  // badges

  
  getBadges(vuexContext,id) {
    return axios.get(process.env.baseUrl + 'badges/'+id, header2)
},
  //rewards

    getCategories(vuexContext) {
        return axios.get(process.env.baseUrl + 'catalogs', header2)
    },
    
    getProducts(vuexContext,id) {
      return axios.get(process.env.baseUrl + 'cat_prod/'+id, header2)
  },

  placeOrder(vuexContext, data){
    return axios.post(process.env.baseUrl + 'orders', data, header2)
},
getAllProducts(vuexContext) {
  return axios.get(process.env.baseUrl + 'products', header2)
},
  SetItemGoal(vuexContext, [id, data]){
    return axios.post(process.env.baseUrl + 'users/'+ id +'/goal_item', data, header2)
  },
  getItemGoal(vuexContext,id) {
  return axios.get(process.env.baseUrl + 'users/'+id+'/goal_item', header2)
  },



//users
  getUsers(vuexContext,data) {
    console.log('data',data)
    return axios.post(process.env.baseUrl + 'program/users/search',data, header2)
},

  // auth
  login(vuexContext, data) {
    return axios.post(process.env.baseUrl + 'oauth/token', data, header2)
  },
  getProfileData(vuexContext) {
    AUTH=Cookies.get('AUTH');
    headerAuth.headers.authorization='Bearer '+AUTH
    return axios.get(process.env.baseUrl + 'authenticated-account/data', headerAuth)
  },
  getUserPoints(vuexContext,id){
    return axios.get(process.env.baseUrl + 'programs/1/users/'+id+'/points/current', headerAuth)
   
    
  },
  updateProfileData(vuexContext, [id, data]) {
    return axios.put(process.env.baseUrl + 'accounts/' + id, data, header2)
  },
  changePassword(vuexContext, [id, data]) {
    return axios.post(process.env.baseUrl + 'password/change/'+id, data, header2)
  },


  // Approvel levels
  getNominationedUsers(vuexContext, [nominationId, accountId]) {
    return axios.get(process.env.baseUrl + 'user_nomination/'+nominationId+'/'+ accountId, header2)
  },
  getApprovedLevel1Users(vuexContext, [nominationId, accountId]) {
    return axios.get(process.env.baseUrl + 'user_nomination/'+nominationId + '/approved_level_one/'+accountId, header2)
  },
  getApprovedLevel2Users(vuexContext, [nominationId, accountId]) {
    return axios.get(process.env.baseUrl + 'user_nomination/'+nominationId + '/approved_level_two/'+accountId, header2)
  },
  approvalLevel1(vuexContext, [cardId, data]) {
    return axios.put(process.env.baseUrl +'update/level/one/'+cardId, data, header2)
  },
  approvalLevel2(vuexContext, [cardId, data]) {
    return axios.put(process.env.baseUrl +'update/level/two/'+cardId, data, header2)
  },
  
}

export default actions;