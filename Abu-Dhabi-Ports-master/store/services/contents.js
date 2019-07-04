import axios from '~/plugins/axios'
let header = {
    "headers": {
        "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjFkMzQwZWM2NjlhNzAyZTdjN2M1NWY3NDVmMjg2ZjdkZWNjMzA4NWY4ZGFhMzM0MjI4YWIwZDg2MDNhNWE3ZGQ5Nzk2M2U1MWNhMDM2NThjIn0.eyJhdWQiOiIxIiwianRpIjoiMWQzNDBlYzY2OWE3MDJlN2M3YzU1Zjc0NWYyODZmN2RlY2MzMDg1ZjhkYWEzMzQyMjhhYjBkODYwM2E1YTdkZDk3OTYzZTUxY2EwMzY1OGMiLCJpYXQiOjE1NDIzMzI4NDksIm5iZiI6MTU0MjMzMjg0OSwiZXhwIjoxNTczODY4ODQ5LCJzdWIiOiIxNSIsInNjb3BlcyI6W119.OWr6UbFm5gaT3j25VWXJ_Bkyj9Zt0nA5C8cUtp5QZYe_-kLdEXP_URNIG8rJdZ4gaO9B_nuRT-UCeWXZhCJjxVGxMkyrwX2UaanrNdcHSkBE_e2eIBLweP4nEChiTwUV9iRDdVJ2V89vZHJdTrH84fIZheLO4S9ihrK658z6EoWPL3HvT81HifczXhpBjSwyXXHnbTPoW9snKKpgVVIHswM_ICBzls38aXZUxEqp6lAjI_v_tRUQN5dlqeVwMPlrVczlzSzTnISVNjOBXzzM9FK62zPjpkPcuAhFsnwKPRJzx_ABNvsKrv5-YK29lotTawjhuNwF5zDa1QWHaCRkt-bnIVWdlyKkSu4EL4ocKUOBDXfvu_tWIewQ5nAQUAo6wcIj9YjUcc-9dl-bgP3D9H6het54QfRYvVxdk86IWHkbU460MUpC5ROJ7Ac-faeg9vLziyfersIHIvZR-pnnASlpf1s0ZXJc4xEzebwqwSc1UB8AwJJuBkBXoWfiOY9FrC-2OD69MJo3mtO7WIK8kmrFp9jcpub2_yBIOlQbfb-fzl1PbZHIexnOcSWtcX2lCCMMKhWkl90jTCunjcz5W_bVUKcBc2TeHXuv-2mROnQtlGR0lcMUa9DUWkcRZzuou4szB8-1MQvjy3idWW5FjQ_uS8ynkitH4ltPR8EnJmk",
        "Accept": "application/json",
        "Content-Type": "application/json"
    }
}
const contents = {
    getPrivacyContent(vuexContext){//محتوى سياسة الخصوصية
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/privacy', header)
    },
    getTermsContent(vuexContext){//محتوى سياسة الاستخدام
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/terms', header)
    },
    getFaqContent(vuexContext){ // سؤال و جواب
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/faq', header)
    },
    getTestimonialsContent(vuexContext){ //محتوى التوصيات
       //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/testimonials', header)
    },
    getHowToStartContent(vuexContext){ //محتوى محتوى من اين ابدا
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/how_start', header)
    }, 
    getAboutusContent(vuexContext){ //محتوى من نحن
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/about_us', header)
    },
    getAboutTestContent(vuexContext){ //محتوى عن الأختبار
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/about_test', header)
    },
    getWhyNotFreeContent(vuexContext){ //محتوى لماذا ليس مجانى
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/why_not_free', header)
    },
    getDiscoverContent(vuexContext){ //محتوى أكتشفها
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/discover', header)
    },
    getHomeContent(vuexContext){ //محتوى الرئيسية الأول
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/contents/index1', header)
    }
}

export default contents;