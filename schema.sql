DROP DATABASE IF EXISTS similar_vehicles; 

CREATE DATABASE similar_vehicles; 

USE similar_vehicles; 

CREATE TABLE IF NOT EXISTS vehicle (
    id SERIAL PRIMARY KEY, 
    year INT NOT NULL, 
    make VARCHAR(25) NOT NULL,
    model VARCHAR(25) NOT NULL,
    class VARCHAR(25) NOT NULL,
    price VARCHAR(25) NOT NULL,
    miles VARCHAR(25) NOT NULL,
    engine_L_Cyl VARCHAR(25) NOT NULL,
    transmission VARCHAR(25) NOT NULL,
    exterior_color VARCHAR(25) NOT NULL,
    interior_color VARCHAR(25) NOT NULL,
    picture TEXT NOT NULL
); 

INSERT INTO vehicle (year, make, model, class, price, miles, engine_L_Cyl, transmission, exterior_color, interior_color, picture)
    VALUES (2017, 'Acura', 'MDX', 'SUV', '$26,929', '36,338', '3.5L V-6 Cyl', 'Automatic', 'Lunar Silver', 'Black', 'https://a2ee4b017484f99db28d-250ec659588d774a6f990238e39cf450.ssl.cf1.rackcdn.com/5FRYD4H51HB000535/393d5e0bb0d20777f157a40cd8630803.jpg'), 
    (2016, 'Nissan', 'Rogue', 'SUV', '$16,989', '17,846', '2.5L I-4 Cyl', 'Automatic', 'Magnetic Black', 'Charcoal', 'https://www.ashevilletoyota.com/assets/stock/colormatched_01/white/640/cc_2016nis110007_01_640/cc_2016nis110007_01_640_g41.jpg'),
    (2019, 'Toyota', 'Highlander', 'SUV', '$31,689', '21,433', '3.5L V-6 Cyl', 'Automatic', 'Shoreline Blue Pearl', 'Black', 'https://blogmedia.dealerfire.com/wp-content/uploads/sites/715/2018/11/2019-Toyota-Highlander-in-Shoreline-Blue-Pearledit_o.jpg'); 






