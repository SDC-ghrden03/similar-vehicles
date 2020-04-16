module.exports = {
    development: {
        client: 'postgresql',
        // connection:'postgres://localhost:5432/similar_vehicles', // works for local deployment
        connection: {
            host: 'ec2-13-57-5-221.us-west-1.compute.amazonaws.com',
            database: 'similar_vehicles',
            user: 'postgres',
            password: 'Tp4kXaZMVLWs'
        },
        migrations: {
            directory: './migrations'
        },
        seeds: {
            directory: './seeds'
        }
    }
}
