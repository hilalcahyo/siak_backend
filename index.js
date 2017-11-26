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
    port: 9000 
});

// Add the route
server.route(Route_GET);
server.route(Route_POST);
server.route(Route_PUT);
server.route(Route_DELETE);

// Start the server
server.start((err) => {

    if (err) {
        throw err;
    }
    console.log('Server running at:', server.info.uri);
});