'use strict'
const connection_mysql = require('../../Config/config_mysql')
const uuidv4 = require('uuid/v4');
const Async = require('async')

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
exports.handleQueryJurnalUmum = (request, callback) => {
    const request_kode_jurnal_umum = request.payload.kode_jurnal_umum
    const request_id_keterangan = request.payload.id_keterangan
    const request_id_rekening_debet = request.payload.id_rekening_debet
    const request_jumlah_debet = request.payload.jumlah_debet
    const request_id_rekening_credit = request.payload.id_rekening_credit
    const request_jumlah_credit = request.payload.jumlah_credit

    const id_jurnal_umum_debet = uuidv4()
    const id_jurnal_umum_kredit = uuidv4()
    const id_jurnal_umum_main = uuidv4()

    const queryStatmentTableJurnalUmumDebet = "INSERT INTO "+
    "`jurnal_umum_debet` "+
    "(`id_jurnal_umum_debet`, `id_rekening`, `jumlah`, `kode_jurnal_umum`)" +
    "VALUES "+
    "(?, ?, ?, ?)"
    const queryStatmentTableJurnalUmumKredit = "INSERT INTO "+
    "`jurnal_umum_kredit` "+
    "(`id_jurnal_umum_kredit`, `id_rekening`, `jumlah`, `kode_jurnal_umum`)" +
    "VALUES "+
    "(?, ?, ?, ?)"
    const queryStatmentTableJurnalUmumMain = "INSERT INTO "+
    "`table_jurnal_umum_main` "+
    "(`id_jurnal_umum_main`, `id_jurnal_umum_debet`, `id_jurnal_umum_kredit`, `id_keterangan`, `created_at`, `updated_at`)" +
    "VALUES "+
    "(?, ?, ?, ?, NOW(), NOW())"
    Async.waterfall([
        (cb) => {
            let resultAll = {
                resultQueryTableJurnalUmumDebet: '',
                resultQueryTableJurnalUmumKredit: '',
                resultQueryTableJurnalUmumMain: '' 
            }
            cb(null, resultAll)
        },
        (resultAll, cb) => {
            connection_mysql.connection.query(queryStatmentTableJurnalUmumKredit, 
                [id_jurnal_umum_kredit, request_id_rekening_credit, request_jumlah_credit, request_kode_jurnal_umum], 
                (errorDB, resultsDB, fieldsDB) => {
                if (errorDB) {
                    throw errorDB
                    console.log('ERROR ', errorDB)
                    callback(true, '')
                } else {
                    resultAll.resultQueryTableJurnalUmumKredit = resultsDB
                    cb(null, resultAll)
                } 
            })
        },
        (resultAll, cb) => {
            connection_mysql.connection.query(queryStatmentTableJurnalUmumDebet, 
                [id_jurnal_umum_debet, request_id_rekening_debet, request_jumlah_debet, request_kode_jurnal_umum], 
                (errorDB, resultsDB, fieldsDB) => {
                if (errorDB) {
                    throw errorDB
                    console.log('ERROR ', errorDB)
                    callback(true, '')
                } else {
                    resultAll.resultQueryTableJurnalUmumDebet = resultsDB
                    cb(null, resultAll)
                } 
            })
        },
        (resultAll, cb) => {
            connection_mysql.connection.query(queryStatmentTableJurnalUmumMain, 
                [id_jurnal_umum_main, id_jurnal_umum_debet, id_jurnal_umum_kredit, request_id_keterangan], 
                (errorDB, resultsDB, fieldsDB) => {
                if (errorDB) {
                    throw errorDB
                    console.log('ERROR ', errorDB)
                    callback(true, '')
                } else {
                    resultAll.resultQueryTableJurnalUmumMain = resultsDB
                    cb(null, resultAll)
                    callback(false, resultAll)
                } 
            })
            // cb(null, resultAll)
            
        } 
    ])
 
    // connection_mysql.connection.query(queryStatment, [id_keterangan, deskripsi_keterangan], 
    //     (errorDB, resultsDB, fieldsDB) => {
    //     if (errorDB) {
    //         throw errorDB
    //         console.log('ERROR ', errorDB)
    //         callback(true, '')
    //     } else {
    //         callback(false, resultsDB)
    //     } 
    // });
}