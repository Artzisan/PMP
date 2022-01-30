import request from '@/utils/request'

// const api_name = `/api/msm`
//容联云
const api_name = `/api/msm/rly`

export default {
    sendCode(phone) {
        return request({
            url: `${api_name}/send/${phone}`,
            method: `get`
        })
    }
}