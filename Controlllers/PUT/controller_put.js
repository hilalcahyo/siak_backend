'use strict'
const model_put = require('../../Models/PUT/model_put')

exports.handleAccount = (request, reply) => {
    model_put.handleQueryAccountUpdateByIdRekening(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}