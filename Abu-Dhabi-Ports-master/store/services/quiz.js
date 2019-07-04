import axios from '~/plugins/axios'
let header = {
    "headers": {
        "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjhiMTZiZGJlY2ZkOWMyMTFiOTg1YTVhM2E3OGI5NmZmY2Y1MjNmNDBjZmEwNjM1ZjJhYWUxMDlhMTlkOGNhOTc3OTEzNjBkZTQyMDAyN2ZiIn0.eyJhdWQiOiIxIiwianRpIjoiOGIxNmJkYmVjZmQ5YzIxMWI5ODVhNWEzYTc4Yjk2ZmZjZjUyM2Y0MGNmYTA2MzVmMmFhZTEwOWExOWQ4Y2E5Nzc5MTM2MGRlNDIwMDI3ZmIiLCJpYXQiOjE1NDY2NDAwOTksIm5iZiI6MTU0NjY0MDA5OSwiZXhwIjoxNTc4MTc2MDk5LCJzdWIiOiI0MSIsInNjb3BlcyI6W119.QB4W7e4YT6TlcUdVfljlk-E-zyKW_q8RQA3bPwbZ5OJrHOjSiTmIfWxZMSfwNE21q4wjmDFUbR_VTzg_uknwP26wOkUYXQOZ2bE8WPbPIXwMKIgQ61eQRecfF-GGk250Rh0YUMT46EaymaBHGO5qoWLSKyFiY_ZvHr5bLyErAZQFs2WBcpcTrRix11KEwD6BlW1m7FVKl8PywwChkITzZvi4GezgGwww8V6RGcOCn5wv97m5NkkLDEXxFENLJep94Gbl0SwdGCCr1cii-r5rAfqoQYTGPiZ_8L5irzS9EumxY96ynFJrsT0EKYy6elEVDNm-0xwh7biU_d16K1-sK03Xpee63PTP2jEE4tTi0zAeEctQtMAkrsVdmmh5K65fEQHsU5Ll7-HvfLQkxPPmuRmfYzLi3v2ReeyXvqDUa6PF4OrDdO5Qs-XfoeB89sndMZ594283_-qQBg9lm5E1me0mzzLAQBoJlqthJLT5F1lasVTZmItoZHr_Amael7B3LjRnVz2owFjUDMmA5U85zSJx0692vca5qZjUIFy8QiZdzM3HyNk1TCUNRQmV53Magc9Jtf92f_SRB3LzayKjUdluKYVG3haofXqNus0420uaXe89wVmQ-KViO-MiFLxBNM4bgHwT48J2NBgWmPpI3lhoD177tXgLThjsu0BG7DE",
        //"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjdjMjEyNWE2NjE3MzllMzhlZWYxMWEwMjU0OWI4YTU2ZWRlOTlkMDEyNDVmYThkOGM4YTQxNWE5YmZkNDc4ODkyMDA5YTA0OWRiY2ZiMGNhIn0.eyJhdWQiOiIxIiwianRpIjoiN2MyMTI1YTY2MTczOWUzOGVlZjExYTAyNTQ5YjhhNTZlZGU5OWQwMTI0NWZhOGQ4YzhhNDE1YTliZmQ0Nzg4OTIwMDlhMDQ5ZGJjZmIwY2EiLCJpYXQiOjE1NDY3MTc3MjMsIm5iZiI6MTU0NjcxNzcyMywiZXhwIjoxNTc4MjUzNzIzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.S-1Q71xQ9mODuCwIoX5Tc8h7t3_1tdI2_pDurOsAmdurT18GnRgDZg7eUzJwUUF27ddJz9XPWxrrn8Eugu8I3OrPg9nxr0k2Fcy_uGbcwyWjsy5o4KlauxmUMPfNsH73kA61X9Lzavlk9kxZ1NijyRoe9KJ3eWhoYwsgknsv5vCbFTgCUUKuCRo-FfbXPu1SKt1RV-b7xaBvOZmNEHuM6ckaqbPuxfPlKSxqarlQdivSFwRkaYdWPXtb3qS0GV33icbqSDKIVmpRfC96MY3Eji_LNNQgebkRI_iMYlUmcSxFU3fdvRxxgWZsq6TL6QH2nmWiN_MhLHw_81OSICBQ9fUF_KpjpyxxEo92tMD7ivasAt-XH-hK22W5cBQUvSOT1GFbw0wlu9EhRSR3ma1NZOq9XEEh_8DumfpXImF5A7kakYlAg4FL36u3lZrcduxlmmdknQbHY2fbbhqatzi2LaX2KTRAX-g6TvLCaCNsDjP_XTWXTWsL2yzMf5d1Cc3qXCbVaRPjvlrQKG5exX-DGZH9Yiqe-rRZGYM0dWG27SfqVSDyiQmLUvNDmM41Gxqf3zIzv3LhAnzG5IIqdqyVzCEAc47A3WahDDr_qoSDvEL3YA2Rt2tDWDfIliSKAu3rHo2P6ldiGyOCvBNBry8q8S7Jee-4vCkKVcYErGur7Ok",
        "Accept": "application/json",
        "Content-Type": "application/json"
    }
}
const quiz = {
    startNewQuiz(vuexContext){
        header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl+'fetch/quiz/new', header)
    },
    QuizAnswer(vuexContext, data){
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/quiz/answer', data, header)
    },
    getQuizResult(vuexContext,id){
        header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl + 'fetch/quiz/'+id+'?human=1', header)
    },
    getQuizUpdatesById(vuexContext,id){
        //header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl + 'fetch/quiz/updates/'+id, header)
    },
    getQuizs(vuexContext){
        header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl + 'fetch/quiz',header)
    },
    getCompareVariables(vuexContext){
        header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl + 'fetch/settings/compare',header)
    },
    getCertificateSignature(vuexContext){
        header.headers.Authorization = vuexContext.state.token
        return axios.get(process.env.baseUrl + 'fetch/settings/core',header)
    },
    alertMe(vuexContext, data){
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'auth/user/alertme', data, header)
    },
    sendIgnoredQues(vuexContext, data){
        header.headers.Authorization = vuexContext.state.token
        return axios.post(process.env.baseUrl + 'fetch/quiz/ignore', data, header)
    },
}

export default quiz;