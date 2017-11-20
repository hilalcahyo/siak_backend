'use strict'
const controller_put = require('../../Controlllers/PUT/controller_put')
module.exports = [
    {
        method: 'PUT',
        path: '/account',
        config: {
            auth: false
        }, handler: controller_put.handleAccount
    }
]