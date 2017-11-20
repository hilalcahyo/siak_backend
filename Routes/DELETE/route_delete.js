'use strict'
const controller_delete = require('../../Controlllers/DELETE/controller_delete')
module.exports = [
    {
        method: 'DELETE',
        path: '/account',
        config: {
            auth: false
        }, handler: controller_delete.handleAccount
    }
]