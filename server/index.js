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


app.listen(PORT, () => {
    console.log(`Listening from: ${PORT}`); 
}); 

