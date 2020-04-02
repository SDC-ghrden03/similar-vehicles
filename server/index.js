require('dotenv').config(); 
const express = require('express'); 
const mysql = require('mysql'); 
const cors = require('cors');

const PORT = process.env.PORT || 3008;
const app = express(); 

app.use(express.static(__dirname + '/../client/dist')); 
app.use(express.json()); 
app.use(cors());

// Database integration 
let connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'similar_vehicles'
}); 

connection.connect((err) => {
    if (err) {
        console.log('error connecting:', err); 
    } else {
        console.log('connected as id', connection.threadId); 
    }
}); 

app.get('/api/similar_vehicles', (req, res) => {
    // randomly generate a car type
    var types = ['Sedan', 'SUV', 'Coupe', 'Hatchback', 'Truck', 'Van', 'Wagon', 'Other'];
    var index = Math.floor(Math.random() * types.length);
    var carType = types[index];
    console.log(carType);
    
    // query the DB
    const getQueryString = `SELECT * FROM vehicle WHERE class = "${carType}" LIMIT 3`; 
    connection.query(getQueryString, (err, results) => {
        if (err) {
            res.status(400).send(err);
        } else {
            res.status(200).json({results: results}); 
        }
    }); 
}); 

app.post('/api/similar_vehicles/add_vehicle', (req, res) => {

    const bod = req.query;
    const postQueryString = `INSERT INTO vehicle (year, make, model, class, price, miles, engine_L_Cyl, transmission, exterior_color, interior_color, picture) VALUES (${bod.year}, ${bod.make}, ${bod.model}, ${bod.class}, ${bod.price}, ${bod.miles}, ${bod.engine_L_Cyl}, ${bod.transmission}, ${bod.exterior_color}, ${bod.interior_color}, ${bod.picture})`
    
    connection.query(postQueryString, (err, results) => {
        if (err) {
            res.status(400).send(err);
        } else {
            res.status(200).send('Database item added');
        }
    });
});

app.put('/api/similar_vehicles/mod_vehicle', (req, res) => {
    
    console.log(req.query);

    const putQueryString = `UPDATE vehicle SET make = 'Chevy' WHERE id = 104`

    connection.query(putQueryString, (err, results) => {
        if (err) {
            res.status(400).send(err);
        } else {
            res.status(200).send('row updated');
        }
    });
});

app.delete('/api/similar_vehicles/delete_vehicle', (req, res) => {
    
}); 

app.listen(PORT, () => {
    console.log(`Listening from: ${PORT}`); 
}); 

