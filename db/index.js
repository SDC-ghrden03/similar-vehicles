const { Pool } = require('pg');

/* Below works with local deployment
const config = {
    database: 'similar_vehicles',
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    password: process.env.DB_PASS
};

const pool = new Pool(config);


*/

connection = {
    host: 'ec2-13-57-5-221.us-west-1.compute.amazonaws.com',
    database: 'similar_vehicles',
    user: 'postgres',
    password: 'Tp4kXaZMVLWs'
}

const pool = new Pool(connection);

module.exports = {
    query: (text, params, callback) => {
        return pool.query(text, params, callback)
    },
};