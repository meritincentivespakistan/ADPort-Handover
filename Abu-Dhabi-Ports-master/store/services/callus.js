import axios from '~/plugins/axios'
let header = {
    "async": true,
    "crossDomain": true,
    "headers": {
        "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjFkMzQwZWM2NjlhNzAyZTdjN2M1NWY3NDVmMjg2ZjdkZWNjMzA4NWY4ZGFhMzM0MjI4YWIwZDg2MDNhNWE3ZGQ5Nzk2M2U1MWNhMDM2NThjIn0.eyJhdWQiOiIxIiwianRpIjoiMWQzNDBlYzY2OWE3MDJlN2M3YzU1Zjc0NWYyODZmN2RlY2MzMDg1ZjhkYWEzMzQyMjhhYjBkODYwM2E1YTdkZDk3OTYzZTUxY2EwMzY1OGMiLCJpYXQiOjE1NDIzMzI4NDksIm5iZiI6MTU0MjMzMjg0OSwiZXhwIjoxNTczODY4ODQ5LCJzdWIiOiIxNSIsInNjb3BlcyI6W119.OWr6UbFm5gaT3j25VWXJ_Bkyj9Zt0nA5C8cUtp5QZYe_-kLdEXP_URNIG8rJdZ4gaO9B_nuRT-UCeWXZhCJjxVGxMkyrwX2UaanrNdcHSkBE_e2eIBLweP4nEChiTwUV9iRDdVJ2V89vZHJdTrH84fIZheLO4S9ihrK658z6EoWPL3HvT81HifczXhpBjSwyXXHnbTPoW9snKKpgVVIHswM_ICBzls38aXZUxEqp6lAjI_v_tRUQN5dlqeVwMPlrVczlzSzTnISVNjOBXzzM9FK62zPjpkPcuAhFsnwKPRJzx_ABNvsKrv5-YK29lotTawjhuNwF5zDa1QWHaCRkt-bnIVWdlyKkSu4EL4ocKUOBDXfvu_tWIewQ5nAQUAo6wcIj9YjUcc-9dl-bgP3D9H6het54QfRYvVxdk86IWHkbU460MUpC5ROJ7Ac-faeg9vLziyfersIHIvZR-pnnASlpf1s0ZXJc4xEzebwqwSc1UB8AwJJuBkBXoWfiOY9FrC-2OD69MJo3mtO7WIK8kmrFp9jcpub2_yBIOlQbfb-fzl1PbZHIexnOcSWtcX2lCCMMKhWkl90jTCunjcz5W_bVUKcBc2TeHXuv-2mROnQtlGR0lcMUa9DUWkcRZzuou4szB8-1MQvjy3idWW5FjQ_uS8ynkitH4ltPR8EnJmk",
        "Accept": "application/json",
        "Content-Type": "application/json"
    }
}

let header2 = {
    "async": true,
    "crossDomain": true,
    "headers": {
        "Accept": "application/json",
        "Content-Type": "application/json"
    }
}
const callus = {
    sendRequests(vuexContext, data) {//اتصل بنا - الطلبات
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/user/request', data, header)
    },
    sendQuestions(vuexContext, data) {//اتصل بنا - استفسارات
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/user/question', data, header)
    },
    sendSuggests(vuexContext, data) {//اتصل بنا - اقتراح
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/user/suggest', data, header)
    },
    sendSuggestsOnCapacity(vuexContext, [id, data]) {//اتصل بنا - اقتراح
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/CapPostSuggest/' + id, data, header)
    },
    sendNotes(vuexContext, data) {//اتصل بنا - الملاحظات
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/user/notes', data, header)
    },
    sendProblems(vuexContext, data) {//اتصل بنا - شكوى
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/user/problem', data, header)
    },
    sendThanks(vuexContext, data) {//اتصل بنا - شكر وعرفان
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/user/thanks', data, header)
    },
    contactUs(vuexContext, data) {//اتصل بنا
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/user/contact', data, header)
    },
    contactUsNoLogin(vuexContext, data) {//اتصل بنا
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/Send/contact', data, header2)
    },

    setLikeAndCommentOnFeild(vuexContext, [itemId, itemType, data]) {//اتصل بنا
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/CapPostLike/' + itemId + '/' + itemType, data, header)
    },

    getLikeAndCommentOnFeild(vuexContext, [itemId, itemType]) {//اتصل بنا
        header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl + 'fetch/HasCapPostLike/' + itemId + '/' + itemType, header)
    }

}

export default callus;