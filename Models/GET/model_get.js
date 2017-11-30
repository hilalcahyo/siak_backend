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
exports.handleQueryAccountsTable = (request, callback) => {
    const queryStatment = 'SELECT '+
    'id_rekening as id_rekening, '+
    'nama_rekening as nama_rekening, ' +
    'kode_rekening as kode_rekening ' +
    'FROM `table_nomer_rekening`'+
    'WHERE `deleted_at` != "1"'
    'ORDER BY nama_rekening ASC' 
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
exports.handleQueryDetailsTable = (request, callback) => {
    const queryStatment = 'SELECT '+
    'id_keterangan as id_keterangan, '+
    'deskripsi_keterangan as deskripsi_keterangan ' +
    'FROM `table_keterangan`'+
    'WHERE `deleted_at` != "1"'
    'ORDER BY deskripsi_keterangan ASC' 
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
exports.handleQueryJurnalUmumTable = (request, callback) => {
    const queryStatment = "SELECT \
    table_jurnal_umum_main.id_jurnal_umum_main, \
    table_keterangan.deskripsi_keterangan as deskripsi_keterangan, \
    jurnal_umum_debet.jumlah as jumlah_debet, \
    jurnal_umum_kredit.jumlah as jumlah_kredit, \
    jurnal_umum_debet.kode_jurnal_umum as kode_jurnal_umum, \
    table_nomer_rekening.nama_rekening as nama_rekening_debet, \
    table_nomer_rekening.kode_rekening as kode_rekening_debet, \
    tbl_rek_2.nama_rekening as nama_rekening_kredit, \
    tbl_rek_2.kode_rekening as kode_rekening_kredit \
    FROM \
    table_jurnal_umum_main \
    LEFT JOIN jurnal_umum_debet \
    ON jurnal_umum_debet.id_jurnal_umum_debet = table_jurnal_umum_main.id_jurnal_umum_debet \
    LEFT JOIN jurnal_umum_kredit \
    ON jurnal_umum_kredit.id_jurnal_umum_kredit = table_jurnal_umum_main.id_jurnal_umum_kredit \
    LEFT JOIN table_keterangan \
    ON table_keterangan.id_keterangan = table_jurnal_umum_main.id_keterangan \
    LEFT JOIN table_nomer_rekening \
    ON table_nomer_rekening.id_rekening = jurnal_umum_debet.id_rekening \
    LEFT JOIN table_nomer_rekening tbl_rek_2 \
    ON tbl_rek_2.id_rekening = jurnal_umum_kredit.id_rekening \
    WHERE 1 \
    GROUP BY kode_jurnal_umum \
    ORDER BY table_jurnal_umum_main.created_at ASC " 
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


exports.handleQueryJurnalUmumTableWithIDRekening = (request, callback) => {
    console.log(request.params.id_rekening)
    const queryStatment = "SELECT \
    table_jurnal_umum_main.id_jurnal_umum_main, \
    table_keterangan.deskripsi_keterangan as deskripsi_keterangan, \
    jurnal_umum_debet.jumlah as jumlah_debet, \
    jurnal_umum_kredit.jumlah as jumlah_kredit, \
    jurnal_umum_debet.kode_jurnal_umum as kode_jurnal_umum, \
    table_nomer_rekening.nama_rekening as nama_rekening_debet, \
    table_nomer_rekening.kode_rekening as kode_rekening_debet, \
    tbl_rek_2.nama_rekening as nama_rekening_kredit, \
    tbl_rek_2.kode_rekening as kode_rekening_kredit \
    FROM \
    table_jurnal_umum_main \
    LEFT JOIN jurnal_umum_debet \
    ON jurnal_umum_debet.id_jurnal_umum_debet = table_jurnal_umum_main.id_jurnal_umum_debet \
    LEFT JOIN jurnal_umum_kredit \
    ON jurnal_umum_kredit.id_jurnal_umum_kredit = table_jurnal_umum_main.id_jurnal_umum_kredit \
    LEFT JOIN table_keterangan \
    ON table_keterangan.id_keterangan = table_jurnal_umum_main.id_keterangan \
    LEFT JOIN table_nomer_rekening \
    ON table_nomer_rekening.id_rekening = jurnal_umum_debet.id_rekening \
    LEFT JOIN table_nomer_rekening tbl_rek_2 \
    ON tbl_rek_2.id_rekening = jurnal_umum_kredit.id_rekening \
    WHERE  \
    jurnal_umum_debet.id_rekening = ? OR \
    jurnal_umum_kredit.id_rekening = ? \
    GROUP BY kode_jurnal_umum \
    ORDER BY table_jurnal_umum_main.created_at ASC " 
    connection_mysql.connection.query(queryStatment, [
        request.params.id_rekening, 
        request.params.id_rekening],(errorDB, resultsDB, fieldsDB) => {
        if (errorDB) {
            throw errorDB
            console.log('ERROR ', errorDB)
            callback(true, '')
        } else {
            callback(false, resultsDB)
        } 
    });
}
exports.handleQueryNeracaSaldoDebet = (request, callback) => {
    const queryStatment = " select \
    sum(jumlah) as total, \
    table_nomer_rekening.nama_rekening, \
    table_nomer_rekening.kode_rekening \
    from \
        jurnal_umum_debet \
    LEFT JOIN table_nomer_rekening \
    ON table_nomer_rekening.id_rekening = jurnal_umum_debet.id_rekening \
    where \
        1 \
    GROUP BY jurnal_umum_debet.id_rekening "
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
exports.handleQueryNeracaSaldoKredit = (request, callback) => {
    const queryStatment = " select \
    sum(jumlah) as total, \
    table_nomer_rekening.nama_rekening, \
    table_nomer_rekening.kode_rekening \
    from \
        jurnal_umum_kredit \
    LEFT JOIN table_nomer_rekening \
    ON table_nomer_rekening.id_rekening = jurnal_umum_kredit.id_rekening \
    where \
        1 \
    GROUP BY jurnal_umum_kredit.id_rekening "
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