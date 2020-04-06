module.exports = {
    development: {
        client: 'pg',
        connection:'postgres://localhost:5432/similar_vehicles',
        migrations: {
            directory: './migrations'
        },
        seeds: {
            directory: './seeds'
        }
    }
}
