'use strict'
const connection_mysql = require('../../Config/config_mysql')
const uuidv4 = require('uuid/v4');

exports.handleQueryAccount = (request, callback) => {
    const id_rekening = uuidv4()
    console.log(request.payload.nama_rekening)
    const nama_rekening = request.payload.nama_rekening
    const kode_rekening = request.payload.kode_rekening

    const queryStatment = "INSERT INTO `table_nomer_rekening`(`id_rekening`, "+ 
    "`nama_rekening`, `kode_rekening`) " +
    "VALUES (?, ?, ?)"
    connection_mysql.connection.query(queryStatment, [id_rekening, nama_rekening, kode_rekening], (errorDB, resultsDB, fieldsDB) => {
        if (errorDB) {
            throw errorDB
            console.log('ERROR ', errorDB)
            callback(true, '')
        } else {
            callback(false, resultsDB)
        } 
    });
}
exports.handleQueryDetail = (request, callback) => {
    const id_keterangan = uuidv4()
    const deskripsi_keterangan = request.payload.deskripsi_keterangan

    const queryStatment = "INSERT INTO `table_keterangan`(`id_keterangan`, "+ 
    "`deskripsi_keterangan`, `created_at`, `updated_at`) " +
    "VALUES (?, ?, NOW(), NOW())"
    connection_mysql.connection.query(queryStatment, [id_keterangan, deskripsi_keterangan], 
        (errorDB, resultsDB, fieldsDB) => {
        if (errorDB) {
            throw errorDB
            console.log('ERROR ', errorDB)
            callback(true, '')
        } else {
            callback(false, resultsDB)
        } 
    });
}