'use strict'
const connection_mysql = require('../../Config/config_mysql')
const uuidv4 = require('uuid/v4');

exports.handleQueryAccountUpdateByIdRekening = (request, callback) => {
const id_rekening = request.payload.id_rekening
console.log(request.payload.id_rekening)
const nama_rekening = request.payload.nama_rekening
console.log(request.payload.nama_rekening)
const kode_rekening = request.payload.kode_rekening
console.log(request.payload.kode_rekening)

const queryStatment = 'UPDATE `table_nomer_rekening` SET `nama_rekening`=?,`kode_rekening`= ?,'+
'`update_at`=NOW() WHERE id_rekening = ?'
connection_mysql.connection.query(queryStatment, [nama_rekening, kode_rekening, id_rekening], (errorDB, resultsDB, fieldsDB) => {
    if (errorDB) {
        throw errorDB
        console.log('ERROR ', errorDB)
        callback(true, '')
    } else {
        callback(false, resultsDB)
    } 
});

}