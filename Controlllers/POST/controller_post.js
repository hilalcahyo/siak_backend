'use strict'
const model_post = require('../../Models/POST/model_post')

exports.handleAccount = (request, reply) => {
    model_post.handleQueryAccount(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleDetail = (request, reply) => {
    model_post.handleQueryDetail(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleJurnalUmum = (request, reply) => {
    model_post.handleQueryJurnalUmum(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}