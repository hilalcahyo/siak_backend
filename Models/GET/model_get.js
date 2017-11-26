 'use strict'
const connection_mysql = require('../../Config/config_mysql')
exports.handleQueryAccounts = (request, callback) => {
    const queryStatment = 'SELECT '+
    'id_rekening as value, '+
    'nama_rekening as label ' +
    'FROM `table_nomer_rekening`'+
    'ORDER BY label ASC' 
    connection_mysql.connection.query(queryStatment, (errorDB, resultsDB, fieldsDB) => {
        if (errorDB) {
            throw errorDB
            console.log('ERROR ', errorDB)
            callback(true, '')
        } else {
            callback(false, resultsDB)
        } 
    });
    
}
exports.handleQueryAccountByNamaRekening = (request, callback) => {
    console.log('REQUEST HEADERS NAMA REKENING SAAT INI : ', request.headers.nama_rekening)
    const requestHeadersNamaRekening = request.headers.nama_rekening
    const queryStatment = 'SELECT * FROM table_nomer_rekening WHERE nama_rekening = ?'
    connection_mysql.connection.query(queryStatment, [requestHeadersNamaRekening],(errorDB, resultsDB, fieldsDB) => {
        if (errorDB) {
            throw errorDB
            console.log('ERROR ', errorDB)
            callback(true, '')
        } else {
            callback(false, resultsDB)
        } 
    });
    
}
exports.handleQueryDetails = (request, callback) => {
    const queryStatment = 'SELECT id_keterangan as value, deskripsi_keterangan as label FROM `table_keterangan` order by deskripsi_keterangan asc'
    connection_mysql.connection.query(queryStatment, (errorDB, resultsDB, fieldsDB) => {
        if (errorDB) {
            throw errorDB
            console.log('ERROR ', errorDB)
            callback(true, '')
        } else {
            callback(false, resultsDB)
        } 
    });   
}
