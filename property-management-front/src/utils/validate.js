/**
 * @param {string} path
 * @returns {Boolean}
 */
/**
 * ^ ：表示匹配输入的开始位置 
 * (https?:|mailto:|tel:)：表示匹配"http:"、"https:"、"mailto:"或"tel:"中的任意一个，
 * 其中https?表示匹配"http:"或"https:"，mailto: 表示匹配"mailto:"， tel: 表示匹配"tel:" 
 * / ：正则表达式的分隔符 
 * .test(path) ：使用正则表达式的 test() 方法来检查给定的路径(path)是否符合上述规则，如果匹配成功则返回true，否则返回false 
 */


export function isExternal(path) {
    return /^(https?:|mailto:|tel:)/.test(path)
}

/**
 * @param {string} str
 * @returns {Boolean}
 */
export function validUsername(str) {
    const valid_map = ['admin', 'editor']
    return valid_map.indexOf(str.trim()) >= 0
}