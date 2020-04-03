const faker = requre('faker');
const pics = require('./seedPictures.js');

const makes = ['Acura', 'Audi', 'BMW', 'Buick', 'Cadillac', 'Chevrolet', 'Chrysler', 'Dodge', 'Ford', 'GMC', 'Honda', 'Hyundai', 'Jeep', 'Kia', 'Lexus', 'Lincoln', 'Mazda', 'Mercedes', 'Nissan', 'Porsche', 'Ram', 'Subaru', 'Tesla', 'Toyota', 'Volkswagen', 'Volvo'];
const classes = ['Sedan', 'SUV', 'Coupe', 'Hatchback', 'Truck', 'Van', 'Wagon', 'Other'];
const engines = ['3.5L V-6 Cyl', '2.4L I-4 Cyl','1.8L I-4 Cyl', '2.0L H-4 Cyl', '3.6L V-6 Cyl', '2.7L V-6 Cyl', '4.3L V-6 Cyl'];
const transmissions = ['Automatic', 'Manual'];

const onFakeVehicle = () => {
  result = {};
  result.year = randValGen(2020, 1991);
  result.make = makes[Math.floor(Math.random() * makes.length)];
  result.model = faker.name.firstName();
  result.class = classes[Math.floor(Math.random() * classes.length)];
  result.price = '$' + faker.commerce.price();
  result.miles = faker.random.number();
  result.engine_L_Cyl = Math.floor(Math.random() * engines.length);
  result.transmission = Math.floor(Math.random() * transmissions.length);
  result.exterior_color = faker.commerce.color();
  result.interior_color = faker.commerce.color();
  result.picture = pics.pics[Math.floor(Math.random() * pictures.length)];
}

exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex('table_name').del()
    .then(function () {
      // Inserts seed entries
      return knex('table_name').insert([
        {id: 1, colName: 'rowValue1'},
        {id: 2, colName: 'rowValue2'},
        {id: 3, colName: 'rowValue3'}
      ]);
    });
};
