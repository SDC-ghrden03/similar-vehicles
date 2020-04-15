const { Pool } = require('pg');

const config = {
    database: 'similar_vehicles',
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    password: process.env.DB_PASS
};

const pool = new Pool(config);

module.exports = {
    query: (text, params, callback) => {
        return pool.query(text, params, callback)
    },
};

// pool.query('select * from similar_vehicles where id < 5 LIMIT 1', (err, res) => {
//     if (err) console.log('ERROR: ', err);

//     pool.end()
// })