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
    const condition = 'Coupe'; 

    const getQueryString = `SELECT * FROM vehicle WHERE class = "${condition}" LIMIT 3`; 

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

