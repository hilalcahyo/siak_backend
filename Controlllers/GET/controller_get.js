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
exports.handleDetails = (request, reply) => {
    model_get.handleQueryDetails(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleAccountsTable = (request, reply) => {
    model_get.handleQueryAccountsTable(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleDetailsTable = (request, reply) => {
    model_get.handleQueryDetailsTable(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}