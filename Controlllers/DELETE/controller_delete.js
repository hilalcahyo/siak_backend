'use strict'
const model_delete = require('../../Models/DELETE/model_delete')

exports.handleAccount = (request, reply) => {
    model_delete.handleQueryAccountDeleteByNamaRekening(request, (error, result) => {
        if(error === true) {
            console.log('error nich')
        } 
        reply({
            "error_json": error,
            "result_json": result
        })
    })
}