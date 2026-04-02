import { login, loginOutApi, getInfo } from '@/api/user'
import { getToken, setToken, removeToken, setUserId, removeUserId, clearSession } from '@/utils/auth'
import { resetRouter } from '@/router'

const getDefaultState = () => {
    return {
        token: getToken(),
        name: '',
        avatar: '',
        roles: []
    }
}

const state = getDefaultState()

const mutations = {
    RESET_STATE: state => {
        Object.assign(state, getDefaultState())
    },
    SET_TOKEN: (state, token) => {
        state.token = token
    },
    SET_NAME: (state, name) => {
        state.name = name
    },
    SET_AVATAR: (state, avatar) => {
        state.avatar = avatar
    },
    SET_ROLES: (state, roles) => {
        state.roles = roles
    }
}

function normalizeLoginData(response) {
    const data = response && response.data
    if (!data) {
        return null
    }

    const token = data.token || data.accessToken || data.access_token
    const userId = data.userId || data.id

    if (!token) {
        return null
    }

    return {
        ...data,
        token,
        userId
    }
}

const actions = {
    login({ commit }, userInfo) {
        const { username, password, userType } = userInfo
        return new Promise((resolve, reject) => {
            login({
                username: username.trim(),
                password,
                userType
            }).then(response => {
                const data = normalizeLoginData(response)
                if (!data) {
                    reject(new Error('登录返回数据异常'))
                    return
                }

                commit('SET_TOKEN', data.token)
                setToken(data.token)
                if (data.userId !== undefined && data.userId !== null && data.userId !== '') {
                    setUserId(data.userId)
                }
                resolve(data)
            }).catch(error => {
                reject(error)
            })
        })
    },

    getInfo({ commit }) {
        return new Promise((resolve, reject) => {
            getInfo().then(response => {
                const data = response && response.data
                if (!data) {
                    reject('获取用户信息失败，请重新登录')
                    return
                }

                const name = data.name || data.username || ''
                const avatar = data.avatar || ''
                const roles = Array.isArray(data.roles) ? data.roles : []
                if (roles.length <= 0) {
                    reject('getInfo: 用户权限信息不能为空')
                    return
                }

                sessionStorage.setItem('codeList', JSON.stringify(roles))
                commit('SET_NAME', name)
                commit('SET_AVATAR', avatar)
                commit('SET_ROLES', roles)
                resolve({
                    ...data,
                    name,
                    avatar,
                    roles
                })
            }).catch(error => {
                reject(error)
            })
        })
    },

    logout({ commit, dispatch, state }) {
        return new Promise((resolve, reject) => {
            loginOutApi(state.token).then(() => {
                removeToken()
                resetRouter()
                commit('RESET_STATE')
                removeUserId()
                clearSession()
                dispatch('tagsView/delAllViews', {}, { root: true })
                resolve()
            }).catch(error => {
                reject(error)
            })
        })
    },

    resetToken({ commit, dispatch }) {
        return new Promise(resolve => {
            removeToken()
            commit('RESET_STATE')
            removeUserId()
            clearSession()
            dispatch('tagsView/delAllViews', {}, { root: true })
            resolve()
        })
    }
}

export default {
    namespaced: true,
    state,
    mutations,
    actions
}
