'use strict'
const model_post = require('../../Models/POST/model_post')

exports.handleAccount = (request, reply) => {
    model_get.handleQueryAccount(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}