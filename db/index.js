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

// PGHOST=ec2-13-57-5-221.us-west-1.compute.amazonaws.com
// PGUSER=postgres
// PGDATABASE=similar_vehicles
// PGPASSWORD=Tp4kXaZMVLWs
// PGPORT=5432

const pool = new Pool({
    host: 'ec2-13-57-5-221.us-west-1.compute.amazonaws.com',
    user: 'postgres',
    database: 'similar_vehicles',
    password: 'Tp4kXaZMVLWs',
    port: 5432
});

module.exports = {
    query: (text, params, callback) => {
        console.log('queried');
        return pool.query(text, params, callback)
    },
};