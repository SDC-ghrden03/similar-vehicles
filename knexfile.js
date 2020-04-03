module.exports = {
    development: {
        client: 'mysql',
        connection: {
            host: process.env.DB_HOST,
            username: process.env.DB_USER,
            database: process.env.DB
        },
        migrations: {
            directory: './migrations'
        },
        seeds: {
            directory: './seeds'
        }
    }
}

  