require('dotenv').config(); 
const express = require('express'); 
const mysql = require('mysql'); 


const PORT = process.env.PORT || 3000;
const app = express(); 

// Database integration 
let connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: `${process.env.DB}`
}); 

connection.connect((err) => {
    if (err) {
        console.log('error connecting:', err); 
    } else {
        console.log('connected as id', connection.threadId); 
    }
}); 

app.get('/api/similar_vehicles', (req, res, next) => {
    const condition = 'Sedan'; 

    const getQueryString = `SELECT * FROM vehicle WHERE class = "${condition}"`; 

    connection.query(getQueryString, (err, results) => {
        if (err) {
            res.status(400).send(err);
        } else {
            res.status(200).json({results: results}); 
        }
    }); 
}); 



app.listen(PORT, () => {
    console.log(`Listening from: ${PORT}`); 
}); 

