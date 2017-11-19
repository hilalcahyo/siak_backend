'use strict'
const model_get = require('../../Models/GET/model_get')

exports.handleAccounts = (request, reply) => {
    model_get.handleQueryAccounts(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleAccountByNamaRekening = (request, reply) => {
    model_get.handleQueryAccountByNamaRekening(request, (error, result) => {
        if(error === true) {
            console.log('error')
        }
        reply({
            "error_json": error,
            "result_json":result
        })
    })
}