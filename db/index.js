const mongoose = require('mongoose');

const mongoURI = 'mongodb://localhost:27017/similarVehicles';

const db = mongoose.connect(mongoURI, { useNewUrlParser: true, useUnifiedTopology: true});

db
  .then(db => console.log(`Connected to: ${mongoURI}`))
  .catch(err => {
    console.log(`There was a problem connecting to mongo at: ${mongoURI}`);
    console.log(err);
  });

// var gooseDB = mongoose.connection;

// gooseDB.on('error', console.error.bind(console, 'Connection error:'));
// gooseDB.once('Connection Open', () => console.log('Connected to mongoDB'));

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

const addManyVehicles = (cars) => {
    return new Promise((resolve, reject) => {
        Vehicle.collection.insertMany(cars, (err, docs) => {
            if (err) {
                reject(err)
            } else {
                resolve(docs.length, 'added');
            }
        })
    })
};

module.exports = addManyVehicles;