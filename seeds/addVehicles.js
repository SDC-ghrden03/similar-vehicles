const faker = require('faker');
const pics = require('../seedPictures.js');

// Vehicle constants for generating random vehicles
const makes = ['Acura', 'Audi', 'BMW', 'Buick', 'Cadillac', 'Chevrolet', 'Chrysler', 'Dodge', 'Ford', 'GMC', 'Honda', 'Hyundai', 'Jeep', 'Kia', 'Lexus', 'Lincoln', 'Mazda', 'Mercedes', 'Nissan', 'Porsche', 'Ram', 'Subaru', 'Tesla', 'Toyota', 'Volkswagen', 'Volvo'];
const classes = ['Sedan', 'SUV', 'Coupe', 'Hatchback', 'Truck', 'Van', 'Wagon', 'Other'];
const engines = ['3.5L V-6 Cyl', '2.4L I-4 Cyl','1.8L I-4 Cyl', '2.0L H-4 Cyl', '3.6L V-6 Cyl', '2.7L V-6 Cyl', '4.3L V-6 Cyl'];
const transmissions = ['Automatic', 'Manual'];

// fake vehicle object generating function
const oneFakeVehicle = () => {
  result = {};
  result.year = Math.floor(Math.random() * (2020 - 1991)) + 1991;
  result.make = makes[Math.floor(Math.random() * makes.length)];
  result.model = faker.name.firstName();
  result.class = classes[Math.floor(Math.random() * classes.length)];
  result.price = '$' + faker.commerce.price();
  result.miles = faker.random.number();
  result.engine_L_Cyl = Math.floor(Math.random() * engines.length);
  result.transmission = Math.floor(Math.random() * transmissions.length);
  result.exterior_color = faker.commerce.color();
  result.interior_color = faker.commerce.color();
  result.picture = pics.pics[Math.floor(Math.random() * pics.pics.length)];

  return result;
}

function batch() {
  // creates array of 100
  var batchOfVehicles = [];
  // # of vehicles to generate
  var vehicleCount = 1000;

  for (var i = 0; i < vehicleCount; i++) {
    batchOfVehicles.push(oneFakeVehicle());
  }

  return batchOfVehicles;
}

// knex seed
exports.seed = async function(knex, Promise) {
  var loopCount = 0;
  // storage of generated vehicles before inserting them into the db
  while (loopCount < 10000) {
    var thisBatch = batch();
    await knex('similar_vehicles').insert(thisBatch);
    loopCount++;
  }

};
