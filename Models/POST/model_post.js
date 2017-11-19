'use strict'
const connection_mysql = require('../../Config/config_mysql')
 exports.handleQueryAccount = (request, callback) => {
    const queryStatment = 'SELECT * FROM table_nomer_rekening'
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