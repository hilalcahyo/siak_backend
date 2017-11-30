'use strict';

const Hapi = require('hapi');
const Route_GET = require('./Routes/GET/route_get')
const Route_POST = require('./Routes/POST/route_post')
const Route_PUT = require('./Routes/PUT/route_put')
const Route_DELETE = require('./Routes/DELETE/route_delete')

// Create a server with a host and port
const server = new Hapi.Server();
server.connection({ 
    host: 'localhost', 
    port: 9000,
    routes: {
        cors: true
    }
});

// Add the route
server.route(Route_GET);
server.route(Route_POST);
server.route(Route_PUT);
server.route(Route_DELETE);

// Add Loggger
const options = {
    ops: {
        interval: 60000
    },
    reporters: {
        myConsoleReporter: [{
            module: 'good-squeeze',
            name: 'Squeeze',
            args: [{
                log: '*',
                error: '*',
                response: '*',
                request: '*',
                ops: '*'
              }]
        }, {
            module: 'good-console'
        }, 'stdout'],
        myFileReporter: [{
            module: 'good-squeeze',
            name: 'Squeeze',
            args: [{
                log: '*',
                error: '*',
                response: '*',
                request: '*',
                ops: '*'
              }]
        }, {
            module: 'good-squeeze',
            name: 'SafeJson'
        }, {
            module: 'good-file',
            args: ['./test/fixtures/awesome_log']
        }],
        myHTTPReporter: [{
            module: 'good-squeeze',
            name: 'Squeeze',
            args: [{ error: '*' }]
        }, {
            module: 'good-http',
            args: ['http://prod.logs:3000', {
                wreck: {
                    headers: { 'x-api-key': 12345 }
                }
            }]
        }]
    }
};

server.register({
    register: require('good'),
    options,
}, (err) => {

    if (err) {
        return console.error(err);
    }
    server.start(() => {
        console.info(`Server started at ${ server.info.uri }`);
    });

});