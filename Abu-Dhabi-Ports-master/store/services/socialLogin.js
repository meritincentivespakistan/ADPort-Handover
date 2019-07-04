import axios from 'axios'
let header = {
    "headers": {
        "Accept": "application/json",
        "Content-Type": "application/json"
    }
}
const social = {

    socialLogin(vuexContext, [provider, token, secret]) {
        if (secret) {
            return axios.get(process.env.baseUrl + 'token/' + provider + '/login?token=' + token + "&secret=" + secret, header)
        } else {
            return axios.get(process.env.baseUrl + 'token/' + provider + '/login?token=' + token, header)
        }

    }
}
export default social;
