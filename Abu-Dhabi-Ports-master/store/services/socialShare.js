import axios from 'axios'
let header = {
    "headers": {
        "Accept": "application/json",
        "Content-Type": "application/json"
    }
}

const share = {
    socialShare(vuexContext, id) {
        return axios.get(process.env.baseUrl + 'fetch/bypass/' + id + '?bypass=A64178122A&share=1&want=share', header)
    }
}
export default share;
