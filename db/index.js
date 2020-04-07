const mongoose = require('mongoose');

const mongoURI = 'mongodb://localhost:27017/similarVehicles';

mongoose.connect(mongoURI, { useNewUrlParser: true});

var gooseDB = mongoose.connection;
gooseDB.on('error', console.error.bind(console, 'Connection error:'));
gooseDB.once('Connection Open', () => console.log('Connected to mongoDB'));

const similarVehicleSchema = new mongoose.Schema({
    year: Number,
    make: String,
    model: String,
    class: String,
    price: String,
    miles: String,
    engine_L_Cyl: String,
    transmission: String,
    exterior_color: String,
    interior_color: String,
    picture: String
});

const Vehicle = mongoose.model('Vehicle', similarVehicleSchema);

