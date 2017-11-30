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
        path: '/accounts/table',
        config: {
            auth: false
        }, handler: controller_get.handleAccountsTable
    },
    {
        method: 'GET',
        path: '/account',
        config: {
            auth: false,
        }, handler: controller_get.handleAccountByNamaRekening
    },
    {
        method: 'GET',
        path: '/details',
        config: {
            auth: false,
        }, handler: controller_get.handleDetails
    },
    {
        method: 'GET',
        path: '/details/table',
        config: {
            auth: false,
        }, handler: controller_get.handleDetailsTable
    },
    {
        method: 'GET',
        path: '/jurnal_umum/table',
        config: {
            auth: false,
        }, handler: controller_get.handleJurnalUmumTable
    },
    {
        method: 'GET',
        path: '/jurnal_umum/table/{id_rekening}',
        config: {
            auth: false,
        }, handler: controller_get.handleJurnalUmumTableWithIDRekening
    }
]