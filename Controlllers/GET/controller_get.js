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
exports.handleJurnalUmumTable = (request, reply) => {
    model_get.handleQueryJurnalUmumTable(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleJurnalUmumTableWithIDRekening = (request, reply) => {
    model_get.handleQueryJurnalUmumTableWithIDRekening(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleNeracaSaldoKredit = (request, reply) => {
    model_get.handleQueryNeracaSaldoKredit(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}
exports.handleNeracaSaldoDebet = (request, reply) => {
    model_get.handleQueryNeracaSaldoDebet(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}