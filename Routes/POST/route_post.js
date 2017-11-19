'use strict'
const controller_post = require('../../Controlllers/POST/controller_post')
module.exports = [
    {
        method: 'POST',
        path: '/account',
        config: {
            auth: false
        }, handler: controller_post.handleAccount
    }
]