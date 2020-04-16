require('newrelic');
require('dotenv').config();

const express = require('express');
// const mysql = require('mysql');
const responseTime = require('response-time');
const redis = require('redis');
const morgan = require('morgan');
const cors = require('cors');
const pool = require('../db/index.js');

const PORT = process.env.PORT || 3008;
const app = express();

app.use(express.static(__dirname + '/../client/dist'));
app.use(express.json());
app.use(morgan('dev'));
app.use(cors());

const client = redis.createClient();

client.on('error', (err) => {
    console.log("ERROR: ", err);
});
    
app.use(responseTime());

app.get('/api/similar_vehicles/getThree', (req, res) => {
    // randomly generate a car type
    var types = ['Sedan', 'SUV', 'Coupe', 'Hatchback', 'Truck', 'Van', 'Other'];
    var index = Math.floor(Math.random() * types.length);
    var carType = types[index];
    console.log(carType);
    const getQueryString = `SELECT * FROM similar_vehicles WHERE class = '${carType}' LIMIT 3`;
    
    // check the redis cache for query result
    return client.get(`similar:${getQueryString}`, (err, result) => {
        if (result) {
            const resultJSON = JSON.parse(result);
            const resultArray = [];
            for (var i = 0; i < 3; i++) {
                resultArray.push(resultJSON[i]);
            }
            return res.status(200).json(resultArray);
        } else {
            // query the DB
            pool.query(getQueryString, (err, results) => {
                if (err) {
                    res.status(400).send(err);
                } else {
                    // Save the DB response in Redis store
                    const dbResponse = results.rows;
                    client.setex(`similar:${getQueryString}`, 3600, JSON.stringify({ source: 'Redis Cache', ...dbResponse, }));
                    res.status(200).json(dbResponse);
                }
            });
        }
    })
});

app.post('/api/similar_vehicles/add_vehicle', (req, res) => {

    const bod = req.query;
    const postQueryString = `INSERT INTO vehicle (year, make, model, class, price, miles, engine_L_Cyl, transmission, exterior_color, interior_color, picture) VALUES (${bod.year}, ${bod.make}, ${bod.model}, ${bod.class}, ${bod.price}, ${bod.miles}, ${bod.engine_L_Cyl}, ${bod.transmission}, ${bod.exterior_color}, ${bod.interior_color}, ${bod.picture})`

    pool.query(postQueryString, (err, results) => {
        if (err) {
            res.status(400).send(err);
        } else {
            res.status(200).send('Database item added');
        }
    });
});

app.put('/api/similar_vehicles/mod_vehicle', (req, res) => {

    // console.log(req.query);
    const putQueryString = `UPDATE vehicle SET make = 'Chevy' WHERE miles = '90,200'`

    pool.query(putQueryString, (err, results) => {
        if (err) {
            res.status(400).send(err);
        } else {
            res.status(200).send('row updated');
        }
    });
});

app.delete('/api/similar_vehicles/delete_vehicle', (req, res) => {

    const delQueryString = `DELETE FROM vehicle WHERE id = ${req.query.id}`

    pool.query(delQueryString, (err, results) => {
        if (err) {
            res.status(400).send(err);
        } else {
            res.status(200).send(`Row deleted where id = ${req.query.id}`);
        }
    });
});

app.listen(PORT, () => {
    console.log(`Listening from: ${PORT}`);
});

/* MySQL Database integration
let connection = mysql.createConnection({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    database: process.env.MYSQL_NAME
    // password: process.env.DB_PASS
});

connection.connect((err) => {
    if (err) {
        console.log('error connecting:', err);
    } else {
        console.log('connected as id', connection.threadId);
    }
});



{
    "0":{"id":480889,"year":2010,"make":"Mercedes","model":"Greg","class":"Coupe","price":"$799.00","miles":"39713","engine_L_Cyl":"4.3L V-6 Cyl","transmission":"Manual","exterior_color":"silver","interior_color":"gold","picture":"https://pictures.dealer.com/e/echoparkthornton/1187/4b062ab8c8b4b27bd1e5a10111d56dabx.jpg?impolicy=resize&w=650"},
    "1":{"id":480892,"year":2005,"make":"Chevrolet","model":"Cali","class":"Coupe","price":"$463.00","miles":"63364","engine_L_Cyl":"4.3L V-6 Cyl","transmission":"Automatic","exterior_color":"pink","interior_color":"orange","picture":"https://pictures.dealer.com/e/echoparkthornton/1717/896e28d8275428fc2d5d89c2f4f6f2c2x.jpg?impolicy=resize&w=650"},
    "2":{"id":480894,"year":2000,"make":"Lexus","model":"Lacy","class":"Coupe","price":"$720.00","miles":"69707","engine_L_Cyl":"3.5L V-6 Cyl","transmission":"Manual","exterior_color":"black","interior_color":"olive","picture":"https://pictures.dealer.com/e/echoparkthornton/1793/8c173eb406666de66089a59e2b0368aex.jpg?impolicy=resize&w=650"},
    "source":"Redis Cache"
}

*/