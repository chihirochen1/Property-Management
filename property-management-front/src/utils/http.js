import axios from "axios";
import { MessageBox, Message } from "element-ui";
import store from "@/store";
import { getToken } from "@/utils/auth";
import qs from "qs";

const service = axios.create({
    baseURL: process.env.VUE_APP_BASE_API_PRO,
    withCredentials: true,
    timeout: 5000
});

service.interceptors.request.use(
    config => {
        const isLoginRequest = config.url === "/api/user/login";
        if (store.getters.token && !isLoginRequest) {
            config.headers.token = getToken();
        }
        return config;
    },
    error => {
        console.log(error);
        return Promise.reject(error);
    }
);

service.interceptors.response.use(
    response => {
        const res = response.data;

        if (res.code !== 200) {
            if (res.code === 600) {
                MessageBox.confirm("您的登录信息已过期，请重新登录！", "系统提示", {
                    confirmButtonText: "去登录",
                    cancelButtonText: "取消",
                    type: "warning"
                }).then(() => {
                    store.dispatch("user/resetToken").then(() => {
                        location.reload();
                    });
                });

                return Promise.reject(new Error(res.msg || "登录信息已过期，请重新登录"));
            }

            Message({
                message: res.msg || "服务器出错",
                type: "error",
                duration: 5 * 1000
            });
            return Promise.reject(new Error(res.msg || "服务器出错"));
        }

        return res;
    },
    error => {
        console.log("err" + error);
        Message({
            message: error.msg || "服务器出错",
            type: "error",
            duration: 5 * 1000
        });
        return Promise.reject(error);
    }
);

const http = {
    post(url, params) {
        return service.post(url, params, {
            transformRequest: [
                data => JSON.stringify(data)
            ],
            headers: {
                "Content-Type": "application/json"
            }
        });
    },
    put(url, params) {
        return service.put(url, params, {
            transformRequest: [
                data => JSON.stringify(data)
            ],
            headers: {
                "Content-Type": "application/json"
            }
        });
    },
    get(url, params) {
        return service.get(url, {
            params,
            paramsSerializer: data => qs.stringify(data)
        });
    },
    getRestApi(url, params) {
        let restParams = "";
        if (!Object.is(params, undefined) && !Object.is(params, null)) {
            restParams = "/";
            for (const key in params) {
                if (
                    Object.prototype.hasOwnProperty.call(params, key) &&
                    params[key] !== null &&
                    params[key] !== ""
                ) {
                    restParams += `${params[key]}/`;
                }
            }
            restParams = restParams.substr(0, restParams.length - 1);
        }

        return restParams ? service.get(`${url}${restParams}`) : service.get(url);
    },
    delete(url, params) {
        let restParams = "";
        if (!Object.is(params, undefined) && !Object.is(params, null)) {
            restParams = "/";
            for (const key in params) {
                if (
                    Object.prototype.hasOwnProperty.call(params, key) &&
                    params[key] !== null &&
                    params[key] !== ""
                ) {
                    restParams += `${params[key]}/`;
                }
            }
            restParams = restParams.substr(0, restParams.length - 1);
        }

        return (restParams ? service.delete(`${url}${restParams}`) : service.delete(url)).catch(err => Promise.reject(err));
    },
    upload(url, params) {
        return service.post(url, params, {
            headers: {
                "Content-Type": "multipart/form-data"
            }
        });
    }
};

export default http;
