'use strict'
const connection_mysql = require('../../Config/config_mysql')

exports.handleQueryAccountDeleteByNamaRekening = (request, callback) => {
const nama_rekening = request.payload.nama_rekening
console.log(request.payload.nama_rekening)


const queryStatment = 'DELETE FROM `table_nomer_rekening` WHERE nama_rekening = ?'
connection_mysql.connection.query(queryStatment, [nama_rekening], (errorDB, resultsDB, fieldsDB) => {
    if (errorDB) {
        throw errorDB
        console.log('ERROR ', errorDB)
        callback(true, '')
    } else {
        callback(false, resultsDB)
    } 
});

}