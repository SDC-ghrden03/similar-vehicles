DROP DATABASE IF EXISTS similar_vehicles; 

CREATE DATABASE similar_vehicles; 

USE similar_vehicles; 

CREATE TABLE IF NOT EXISTS vehicle (
    id SERIAL PRIMARY KEY, 
    year INT NOT NULL, 
    make VARCHAR(25) NOT NULL,
    model VARCHAR(25) NOT NULL,
    engine VARCHAR(25) NOT NULL,
    class VARCHAR(25) NOT NULL,
    price INT NOT NULL,
    miles INT NOT NULL,
    engine_L_Cyl VARCHAR(25) NOT NULL,
    transmission VARCHAR(25) NOT NULL,
    exterior_color VARCHAR(25) NOT NULL,
    interior_color VARCHAR(25) NOT NULL,
    picture TEXT NOT NULL
); 



