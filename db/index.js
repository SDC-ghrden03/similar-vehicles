const { Pool } = require('pg');

/* Below works with local deployment, as does leaving config out of new pool, defaults to ENV vars
const config = {
    database: 'similar_vehicles',
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    password: process.env.DB_PASS
};

const pool = new Pool(config);
*/

const pool = new Pool();

module.exports = {
    query: (text, params, callback) => {
        console.log('queried');
        return pool.query(text, params, callback)
    },
};