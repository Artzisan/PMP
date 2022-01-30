import request from '@/utils/request'

const api_name = `/api/rly`

export default {
    sendCode(phone) {
        return request({
            url: `${api_name}/send/${phone}`,
            method: `get`
        })
    }
}