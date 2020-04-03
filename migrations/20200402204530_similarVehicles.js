
exports.up = async function(knex, promise) {
  await knex.schema.createTable('similar_vehicles', table => {  
    table.increments('id').primary();
    table.integer('year');
    table.string('make');
    table.string('model');
    table.string('class');
    table.string('price');
    table.string('miles');
    table.string('engine_L_Cyl');
    table.string('transmission');
    table.string('exterior_color');
    table.string('interior_color');
    table.string('picture');
  });
};

exports.down = function(knex) {
  
};
