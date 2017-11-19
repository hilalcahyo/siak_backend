'use strict'
const controller_get = require('../../Controlllers/GET/controller_get')
module.exports = [
    {
        method: 'GET',
        path: '/accounts',
        config: {
            auth: false
        }, handler: controller_get.handleAccounts
    },
    {
        method: 'GET',
        path: '/account',
        config: {
            auth: false,
        }, handler: controller_get.handleAccountByNamaRekening
    }
]