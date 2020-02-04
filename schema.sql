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
    exterior_color VARCHAR(50) NOT NULL,
    interior_color VARCHAR(50) NOT NULL,
    picture TEXT NOT NULL
); 

INSERT INTO vehicle (year, make, model, class, price, miles, engine_L_Cyl, transmission, exterior_color, interior_color, picture)
    VALUES (2017, 'Acura', 'MDX', 'SUV', '$26,929', '36,338', '3.5L V-6 Cyl', 'Automatic', 'Lunar Silver', 'Black', 'https://a2ee4b017484f99db28d-250ec659588d774a6f990238e39cf450.ssl.cf1.rackcdn.com/5FRYD4H51HB000535/393d5e0bb0d20777f157a40cd8630803.jpg'), 
    (2016, 'Nissan', 'Rogue', 'SUV', '$16,989', '17,846', '2.5L I-4 Cyl', 'Automatic', 'Magnetic Black', 'Charcoal', 'https://www.ashevilletoyota.com/assets/stock/colormatched_01/white/640/cc_2016nis110007_01_640/cc_2016nis110007_01_640_g41.jpg'),
    (2019, 'Toyota', 'Highlander', 'SUV', '$31,689', '21,433', '3.5L V-6 Cyl', 'Automatic', 'Shoreline Blue Pearl', 'Black', 'https://blogmedia.dealerfire.com/wp-content/uploads/sites/715/2018/11/2019-Toyota-Highlander-in-Shoreline-Blue-Pearledit_o.jpg'),
    (2018, 'Nissan', 'Sentra', 'Sedan', '$11,289', '39,225', '1.8L I-4 Cyl', 'Automatic', 'Fresh Powder', 'Charcoal', 'https://inventory-dmg.assets-cdk.com/evox/color_0640_032/12626/12626_cc0640_032_QM1.jpg'), 
    (2017, 'Jeep', 'Patriot', 'SUV', '$16,189', '24,811', '2.4L I-4 Cyl', 'Automatic', 'Bright White', 'Dark Slate Gray', 'https://pictures.dealer.com/e/echoparkcentennial/1276/a1e8ee0063f77c29174fc2294ceb63e9x.jpg?impolicy=resize&w=650'),
    (2018, 'Jeep', 'Compass', 'SUV', '$19,589', '32,410', '2.4L I-4 Cyl', 'Automatic', 'Rhino', 'Black', 'https://pictures.dealer.com/e/echoparkcentennial/1306/d25c970d7d1b4935f8d9135915331653x.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Equinox', 'SUV', '$15,589', '23,429', '2.4L I-4 Cyl', 'Automatic', 'Nightfall Gray', 'Jet Black', 'https://pictures.dealer.com/e/echoparkdallas/1247/22a039202566d91fd8afea8bb5bb1424x.jpg?impolicy=resize&w=650'),
    (2017, 'Lexus', 'RC 300', 'Coupe', '$31,989', '18,057', '3.5L V-6 Cyl', 'Automatic', 'Nebula Gray Pearl', 'Rioja Red', 'https://pictures.dealer.com/e/echoparkcentennial/0211/7dcb814acba0060f2bc813e633aa4af1x.jpg?impolicy=resize&w=650'),
    (2017, 'Mazda', 'CX-3', 'SUV', '$15,789', '32,638', '2.0L I-4 Cyl', 'Automatic', 'Jet Black Mica', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0668/a7fbcb9718836ef33ed8e21f0d6ea181x.jpg?impolicy=resize&w=650'),
    (2019, 'Dodge', 'Challenger', 'Coupe', '$22,269', '18,468', '3.6L V-6 Cyl', 'Automatic', 'Pitch Black', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1147/30b5b9e45dc43a115fc5ca9341d05d8dx.jpg?impolicy=resize&w=650'),
    (2017, 'Honda', 'Accord LX-S', 'Coupe', '$15,689', '21,122', '2.4L I-4 Cyl', 'Automatic', 'San Marino Red', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/0449/628432c18fd69734ca89391e8e1ff285x.jpg?impolicy=resize&w=650'),
    (2019, 'Dodge', 'Challenger', 'Coupe', '$22,269', '18,468', '3.6L V-6 Cyl', 'Automatic', 'Pitch Black', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1147/30b5b9e45dc43a115fc5ca9341d05d8dx.jpg?impolicy=resize&w=650'),
    (2016, 'Lexus', 'RC 300', 'Coupe', '$27,969', '20,246', '3.5L V-6 Cyl', 'Automatic', 'Silver', 'Beige', 'https://pictures.dealer.com/e/echoparkthornton/1650/9ad870d0cacb34b80a522b2c3f10b317x.jpg?impolicy=resize&w=650'), 
    (2019, 'Dodge', 'Challenger', 'Coupe', '$22,149', '18,063', '3.6L V-6 Cyl', 'Automatic', 'Octane Red Pearlcoat', 'Black', 'https://pictures.dealer.com/e/echoparkcentennial/1139/73f14b5955dcf319fbf993ae4c727a6cx.jpg?impolicy=resize&w=650'),  
    (2017, 'Mazda', 'CX-3', 'SUV', '$15,789', '32,638', '2.0L I-4 Cyl', 'Automatic', 'Jet Black Mica', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0668/a7fbcb9718836ef33ed8e21f0d6ea181x.jpg?impolicy=resize&w=650'),
    (2017, 'Mercedes-Benz', 'CLA 250', 'Coupe', '$20,789', '30,023', '2.0L I-4 Cyl', 'Automatic', 'Night Black', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/1339/45c264ed748d72488b9e355756960171x.jpg?impolicy=resize&w=650'),
    (2019, 'Hyundai', 'Kona', 'SUV', '$16,589', '23,571', '2.0L I-4 Cyl', 'Automatic', 'Thunder Gray', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0380/07b46f600aee084bd5125cb3a5c83786x.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Escape', 'SUV', '$16,349', '33,863', '2.0L I-4 Cyl', 'Automatic', 'Oxford White', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0138/b5973e4f30a3493a0ed13f7b59dbf9e5x.jpg?impolicy=resize&w=650'),
    (2017, 'Ford', 'Escape', 'SUV', '$16,689', '37,030', '1.5L I-4 Cyl', 'Automatic', 'Magnetic', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0556/39576888f6cbd4e6c625021bf2c60d43x.jpg?impolicy=resize&w=650'),
    (2018, 'Hyundai', 'Tucson', 'SUV', '$16,689', '29,615', '2.0L I-4 Cyl', 'Automatic', 'Dazzling White', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/0425/db7035de6b5c4a1a88c07d2429d5bcf9x.jpg?impolicy=resize&w=650'),
    (2016, 'Kia', 'Sorento', 'SUV', '$13,989', '38,328', '2.4L I-4 Cyl', 'Automatic', 'Blaze Blue', 'Satin Black', 'https://pictures.dealer.com/e/echoparkdallas/0418/333aa130c78a3987325b422f2e55520bx.jpg?impolicy=resize&w=650'),
    (2018, 'Ford', 'Titanium', 'SUV', '$14,419', '32,732', '1.0L I-3 Cyl', 'Automatic', 'Smoke', 'Ebony Black', 'https://pictures.dealer.com/e/echoparkdallas/1471/3ed9fb07a2f17185108a729acef2a9ebx.jpg?impolicy=resize&w=650'),
    (2017, 'Volkswagen', 'Jetta', 'Sedan', '$12,249', '22,845', '1.4L I-4 Cyl', 'Automatic', 'Platinum Gray', 'Titan Black/Palladium Gray', 'https://pictures.dealer.com/e/echoparkthornton/0410/0045345397ed2cf07da4afb68dddd380x.jpg?impolicy=resize&w=650'),
    (2019, 'Hyundai', 'Accent', 'Sedan', '$12,339', '26,509', '1.6L I-4 Cyl', 'Automatic', 'Olympus Silver', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1368/f92dc1fb0c765e7cdfd724ec9a564263x.jpg?impolicy=resize&w=650'),
    (2018, 'Toyota', 'Corolla', 'Sedan', '$12,989', '37,780', '1.8L I-4 Cyl', 'Automatic', 'Slate', 'Ash', 'https://pictures.dealer.com/e/echoparkthornton/1246/6b9bb4af44c265ee923ed0cbb01a28b2x.jpg?impolicy=resize&w=650'),
    (2018, 'Hyundai', 'Elantra', 'Sedan', '$13,129', '37,654', '2.0L I-4 Cyl', 'Automatic', 'Phantom Black', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/0861/fb04788a34d4ad08002a89f094edc2b9x.jpg?impolicy=resize&w=650'),
    (2018, 'Toyota', 'Corolla', 'Sedan', '$13,209', '37,338', '1.8L I-4 Cyl', 'Automatic', 'Super White', 'Ash', 'https://pictures.dealer.com/e/echoparkthornton/1133/e718134806c25cbcf4edf7060119a431x.jpg?impolicy=resize&w=650'),
    (2016, 'Honda', 'Civic', 'Sedan', '$13,389', '17,457', '2.0L I-4 Cyl', 'Automatic', 'Black', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1997/33fecf83d2182dab8fe029b1e50c504ex.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Cruze', 'Sedan', '$13,689', '32,902', '1.4L I-4 Cyl', 'Automatic', 'Red Hot', 'Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1170/c92dd4bf3d6ea46b03b9c718f673f149x.jpg?impolicy=resize&w=650'),
    (2019, 'Toyota', 'Yaris', 'Sedan', '$13,989', '19,740', '1.5L I-4 Cyl', 'Automatic', 'Frost', 'Blue Black', 'https://pictures.dealer.com/e/echoparkthornton/1803/bc05776f5bef1c616c336a175e211d5bx.jpg?impolicy=resize&w=650'),
    (2016, 'Chevrolet', 'Malibu', 'Sedan', '$14,359', '30,203', '1.5L I-4 Cyl', 'Automatic', 'Mosaic Black', 'Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1187/4b062ab8c8b4b27bd1e5a10111d56dabx.jpg?impolicy=resize&w=650'),
    (2019, 'Kia', 'Forte', 'Sedan', '$14,489', '23,024', '2.0L I-4 Cyl', 'Automatic', 'Gravity Gray', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1937/87d9de6e17fd5370e3e70a06fa306ea5x.jpg?impolicy=resize&w=650'),
    (2017, 'Hyundai', 'Sonata', 'Sedan', '$14,959', '33,676', '2.4L I-4 Cyl', 'Automatic', 'Shale Gray', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/0278/f1036b857dcf3d95b24ec0c18d9a3809x.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Cruze', 'Sedan', '$14,989', '35,641', '1.4L I-4 Cyl', 'Automatic', 'Mosaic Black', 'Jet Black/Kalahari', 'https://pictures.dealer.com/e/echoparkthornton/1760/d1de1f984f61c9890653d463467e9b63x.jpg?impolicy=resize&w=650'), 
    (2017, 'Honda', 'Civic', 'Coupe', '$17,489', '25,556', '1.5L I-4 Cyl', 'Automatic', 'White Orchid Pearl', 'Black/Gray', 'https://pictures.dealer.com/e/echoparkcoloradosprings/1339/026b440a6c78f7f3bd03cf3b441eeb35x.jpg?impolicy=resize&w=650'),
    (2016, 'Kia', 'Forte Koup', 'Coupe', '$13,589', '23,127', '1.6L I-4 Cyl', 'Automatic', 'Graphite Steel', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/0605/7d4649808bce5841ee3d36128c183e10x.jpg?impolicy=resize&w=650'),
    (2016, 'Mercedes-Benz', 'CLA 250', 'Coupe', '$18,809', '24,324', '2.0L I-4 Cyl', 'Automatic', 'Cirrus White', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/0597/e3446e040c84eadf93206230a0349633x.jpg?impolicy=resize&w=650'),
    (2016, 'Dodge', 'Challenger SXT', 'Coupe', '$18,869', '33,126', '3.6L V-6 Cyl', 'Automatic', 'Bright White', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/1918/8b879b4eea489f0f2eb7cb0f4e9041a1x.jpg?impolicy=resize&w=650'),
    (2018, 'Ford', 'Mustang', 'Coupe', '$18,989', '36,808', '2.3L I-4 Cyl', 'Automatic', 'Ingot Silver', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/1486/79b99f5234deb6c42b0e5126eff4f40ax.jpg?impolicy=resize&w=650'),
    (2018, 'Ford', 'Focus', 'Hatchback', '$10,989', '38,234', '2.0L I-4 Cyl', 'Automatic', 'Ingot Silver', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0613/53683e02b8d349f6edf4231917f0e18ex.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Focus', 'Hatchback', '$10,989', '28,498', '1.0L I-3 Cyl', 'Automatic', 'Magnetic', 'Medium Light Stone', 'https://pictures.dealer.com/e/echoparkthornton/0206/472b931abf2096de25324372f68518d4x.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Focus', 'Hatchback', '$11,389', '23,840', '2.0L I-4 Cyl', 'Automatic', 'Kona Blue', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0926/d19f2246ba0c9ea2ebb8c68924ecf869x.jpg?impolicy=resize&w=650'),
    (2016, 'Hyundai', 'Elantra', 'Hatchback', '$12,709', '33,857', '2.0L I-4 Cyl', 'Automatic', 'Shimmering Silver', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0531/4451f4c93e8248adb0ccdaa1f02acc74x.jpg?impolicy=resize&w=650'),
    (2018, 'Hyundai', 'Elantra', 'Hatchback', '$13,469', '29,239', '2.0L I-4 Cyl', 'Automatic', 'Symphony Air Silver', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0451/6cc086758a1bf2aa41bcd909639d7310x.jpg?impolicy=resize&w=650'),
    (2018, 'Kia', 'Forte', 'Hatchback', '$13,239', '32,418', '2.0L I-4 Cyl', 'Automatic', 'Aurora Black Pearl', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0052/923aa86f3f73831dea169dc795770100x.jpg?impolicy=resize&w=650'),
    (2019, 'Kia', 'Soul +', 'Hatchback', '$14,269', '27,055', '2.0L I-4 Cyl', 'Automatic', 'Clear White', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1225/cbc043867c70a865fae0aaa3ad4fbe86x.jpg?impolicy=resize&w=650'),
    (2018, 'Kia', 'Soul +', 'Hatchback', '$12,589', '39,075', '2.0L I-4 Cyl', 'Automatic', 'Shadow Black', 'Gray 2-Tone', 'https://pictures.dealer.com/e/echoparkthornton/1225/cbc043867c70a865fae0aaa3ad4fbe86x.jpg?impolicy=resize&w=650'),
    (2017, 'Kia', 'Soul +', 'Hatchback', '$14,229', '29,876', '2.0L I-4 Cyl', 'Automatic', 'Bright Silver', 'Gray 2-Tone', 'https://pictures.dealer.com/e/echoparkcentennial/0328/046927e0fb8b9e2fbb619825f29190bfx.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Fiesta', 'Hatchback', '$9,999', '28,297', '1.6L I-4 Cyl', 'Automatic', 'Magnetic', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkcoloradosprings/1349/747e687ec41b611e51953676b839ead6x.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Fiesta', 'Hatchback', '$9,379', '37,845', '1.6L I-4 Cyl', 'Automatic', 'Shadow Black', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkdallas/0585/c44ef7a745a0031898877232d49c10e7x.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Cruze', 'Hatchback', '$13,279', '23,712', '1.4L I-4 Cyl', 'Automatic', 'Cajun Red Tintcoat', 'Jet Black', 'https://pictures.dealer.com/e/echoparkdallas/1947/2758e1ae40983f93b8a867204141f3d5x.jpg?impolicy=resize&w=650'),
    (2019, 'Nissan', 'Frontier', 'Truck', '$21,189', '24,000', '4.0L V-6 Cyl', 'Automatic', 'Gun', 'Steel', 'https://pictures.dealer.com/e/echoparkthornton/1527/e92c27abc394a6c718d5da30427b5865x.jpg?impolicy=resize&w=650'), 
    (2019, 'Nissan', 'Frontier', 'Truck', '$21,409', '17,920', '4.0L V-6 Cyl', 'Automatic', 'Glacier White', 'Steel', 'https://pictures.dealer.com/e/echoparkthornton/1330/549f5c3ab5f87036fd4c42a90554db7ex.jpg?impolicy=resize&w=650'),
    (2019, 'Nissan', 'Frontier', 'Truck', '$21,469', '24,200', '4.0L V-6 Cyl', 'Automatic', 'Glacier White', 'Steel', 'https://pictures.dealer.com/e/echoparkthornton/1718/bf9a0a7c3c9e013f4fb4a3fe3ca5d7f2x.jpg?impolicy=resize&w=650'),
    (2017, 'Ram', '1500 Express', 'Truck', '$21,589', '38,376', '3.6L V-6 Cyl', 'Automatic', 'Brilliant Black Crystal Pearlcoat', 'Diesel Gray/Black', 'https://pictures.dealer.com/e/echoparkthornton/0930/7273d416e137b34f89f93fd4e4cbdf85x.jpg?impolicy=resize&w=650'),
    (2016, 'Ram', '1500 Express', 'Truck', '$22,949', '14,777', '4.0L V-6 Cyl', 'Automatic', 'Brilliant Black Crystal Pearlcoat', 'Diesel Gray/Black', 'https://pictures.dealer.com/e/echoparkthornton/1013/3c644ca243ccd60ef34331da9318d8a2x.jpg?impolicy=resize&w=650'),
    (2016, 'Chevrolet', 'Silverado', 'Truck', '$23,189', '29,113', '4.3L V-6 Cyl', 'Automatic', 'Black', 'Dark Ash/Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1874/920e1fd0f02fbeaf20fb4f711ff45c16x.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Silverado 1500 LT', 'Truck', '$23,389', '42,515', '4.3L V-6 Cyl', 'Automatic', 'Graphite', 'Dark Ash/Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1425/76e2885aecce8ff67acd7a752b95a73fx.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Silverado 1500', 'Truck', '$23,439', '36,527', '4.3L V-6 Cyl', 'Automatic', 'Black', 'Dark Ash/Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1992/2d4e53c7ce65a45f1a2c4f446d304c45x.jpg?impolicy=resize&w=650'),
    (2016, 'GMC', 'Sierra 1500', 'Truck', '$23,809', '31,828', '4.3L V-6 Cyl', 'Automatic', 'Onyx Black', 'Dark Ash/Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/0684/acb31527e099a082e8ff64876ca18d2dx.jpg?impolicy=resize&w=650'),
    (2017, 'GMC', 'Sierra 1500', 'Truck', '$24,989', '21,816', '4.3L V-6 Cyl', 'Automatic', 'Summit White', 'Dark Ash/Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1198/bf292d19e24b60292b29dfeb77cb8e10x.jpg?impolicy=resize&w=650'),
    (2016, 'GMC', 'Sierra 1500', 'Truck', '$27,489', '27,538', '5.3L V-8 Cyl', 'Automatic', 'Crimson Red Tintcoat', 'Jet Black/Spice Red', 'https://pictures.dealer.com/e/echoparkthornton/1581/940ddf90306070aa04a5485344e8afa4x.jpg?impolicy=resize&w=650'),
    (2016, 'GMC', 'Sierra 1500', 'Truck', '$28,239', '43,431', '5.3L V-8 Cyl', 'Automatic', 'Quicksilver', 'Jet Black', 'https://pictures.dealer.com/e/echoparkcentennial/1708/ad39b993ac4480a25b55de42d938df09x.jpg?impolicy=resize&w=650'),
    (2019, 'Toyota', 'Tacoma', 'Truck', '$27,139', '24,983', '3.5L V-6 Cyl', 'Automatic', 'Silver Sky', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/1928/2155c309d4c245525cf56e5c6111f453x.jpg?impolicy=resize&w=650'),
    (2019, 'Toyota', 'Tacoma', 'Truck', '$28,109', '13,498 ', '3.5L V-6 Cyl', 'Automatic', 'Red', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0769/8f5684cc226bef40f1b21932847a2288x.jpg?impolicy=resize&w=650'),
    (2019, 'Toyota', 'Tacoma', 'Truck', '$28,589', '23,851', '3.5L V-6 Cyl', 'Automatic', 'Super White', 'Cement Gray', 'https://pictures.dealer.com/e/echoparkthornton/0220/159e4f721a8f44b6938b048e315cf1c4x.jpg?impolicy=resize&w=650'),
    (2019, 'Toyota', 'Tacoma', 'Truck', '$28,989', '20,756', '3.5L V-6 Cyl', 'Automatic', 'Midnight Black', 'Cement Gray', 'https://pictures.dealer.com/e/echoparkthornton/0176/612056c719b93b0b060329212967a1a2x.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'F-150', 'Truck', '$27,289', '36,895', '2.7L V-6 Cyl', 'Automatic', 'Gray', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0537/53e9639ff4105cca2bd71e594c29662dx.jpg?impolicy=resize&w=650'),
    (2019, 'Ford', 'F-150', 'Truck', '$27,849', '38,812', '3.5L V-6 Cyl', 'Automatic', 'Race Red', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0955/885fa2bd88925230833c429e5fd0e903x.jpg?impolicy=resize&w=650'),
    (2017, 'Ford', 'F-150', 'Truck', '$28,789', '36,521', '2.7L V-6 Cyl', 'Automatic', 'Shadow Black', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1353/f38051b7400250cc3bed88a37683dce8x.jpg?impolicy=resize&w=650'),
    (2017, 'Ford', 'F-150', 'Truck', '$29,939', '21,716', '2.7L V-6 Cyl', 'Automatic', 'Ingot Silver', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1688/c0116887de83aafd55e319885f322c3dx.jpg?impolicy=resize&w=650'),
    (2019, 'Chrysler', 'Pacifica Touring', 'Van', '$20,959', '38,620', '3.6L V-6 Cyl', 'Automatic', 'Bright White', 'Black/Alloy', 'https://pictures.dealer.com/e/echoparkthornton/1095/86b275898bf41146d7a16c73877057d9x.jpg?impolicy=resize&w=650'), 
    (2018, 'Dodge', 'Grand Caravan', 'Van', '$15,769', '32,073', '3.6L V-6 Cyl', 'Automatic', 'Billet', 'Black/Light Graystone', 'https://pictures.dealer.com/e/echoparkthornton/1793/8c173eb406666de66089a59e2b0368aex.jpg?impolicy=resize&w=650'), 
    (2018, 'Chrysler', 'Pacifica Touring', 'Van', '$23,159', '16,639', '3.6L V-6 Cyl', 'Automatic', 'Granite Crystal', 'Black/Alloy', 'https://pictures.dealer.com/e/echoparkthornton/0173/b9da55c3da63af7d071ef128181dc3bfx.jpg?impolicy=resize&w=650'), 
    (2017, 'Chrysler', 'Pacifica Touring', 'Van', '$23,589', '37,503', '3.6L V-6 Cyl', 'Automatic', 'Billet Silver', 'Black/Alloy', 'https://pictures.dealer.com/e/echoparkdallas/1937/3b935f5bc1ee8332384caa373bac5141x.jpg?impolicy=resize&w=650'), 
    (2016, 'Chrysler', 'Town & Country Touring', 'Van', '$15,999', '39,723', '3.6L V-6 Cyl', 'Automatic', 'Deep Cherry Red Crystal Pearlcoat', 'Black/Light Graystone', 'https://pictures.dealer.com/e/echoparknewbraunfels/1611/c5f6d6528bd8569a6b48e2d29bd7dcbex.jpg?impolicy=resize&w=650'), 
    (2017, 'Chrysler', 'Pacifica Touring', 'Van', '$24,989', '44,697', '3.6L V-6 Cyl', 'Automatic', 'Brilliant Black Crystal Pearlcoat', 'Black/Alloy', 'https://pictures.dealer.com/e/echoparkhouston/0194/6355241f2a1ee68f1545c7052513ff1fx.jpg?impolicy=resize&w=650'), 
    (2018, 'Chrysler', 'Pacifica Touring', 'Van', '$25,989', '30,700', '3.6L V-6 Cyl', 'Automatic', 'Billet Silver', 'Black/Alloy', 'https://pictures.dealer.com/e/echoparkhouston/1160/4a2717f7ba0a88125a1ced262d051d7bx.jpg?impolicy=resize&w=650'), 
    (2019, 'Dodge', 'Grand Caravan', 'Van', '$19,109', '38,620', '3.6L V-6 Cyl', 'Automatic', 'Black Onyx Crystal Pearlcoat', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0996/e5a39ae5758787c1268a3ec16bc308dbx.jpg?impolicy=resize&w=650'), 
    (2019, 'Dodge', 'Grand Caravan', 'Van', '$19,239', '26,565', '3.6L V-6 Cyl', 'Automatic', 'Billet', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1192/63a6a8b03709ae89781dfffc2fb592f0x.jpg?impolicy=resize&w=650'), 
    (2019, 'Dodge', 'Grand Caravan', 'Van', '$15,889', '25,470', '3.6L V-6 Cyl', 'Automatic', 'White Knuckle', 'Black/Light Graystone', 'https://pictures.dealer.com/e/echoparkcharlotte/1406/654f299a97516c7d49b08012fde0a8fdx.jpg?impolicy=resize&w=650'), 
    (2019, 'Dodge', 'Grand Caravan', 'Van', '$18,389', '28,001', '3.6L V-6 Cyl', 'Automatic', 'Black Onyx Crystal Pearlcoat', 'Black', 'https://pictures.dealer.com/e/echoparkhouston/1487/7be458107f5ad41ce355bbf22ce60823x.jpg?impolicy=resize&w=650'), 
    (2019, 'Dodge', 'Grand Caravan', 'Van', '$17,189', '28,303', '3.6L V-6 Cyl', 'Automatic', 'Granite Pearlcoat', 'Black/Light Graystone', 'https://pictures.dealer.com/e/echoparkhouston/1394/ad80fa6e3300a7baf9795a541572c74ex.jpg?impolicy=resize&w=650'),
    (2019, 'Honda', 'Odyssey', 'Van', '$20,879', '21,959', '3.5L V-6 Cyl', 'Automatic', 'Crystal Black Pearl', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/0180/6b95b2fe9308e4c88177ede37ec74452x.jpg?impolicy=resize&w=650'), 
    (2018, 'Honda', 'Odyssey', 'Van', '$24,889', '17,003', '3.5L V-6 Cyl', 'Automatic', 'White Diamond Pearl', 'Beige', 'https://pictures.dealer.com/e/echoparkdallas/1107/9149e71e37c46135c3df126297f2ebf8x.jpg?impolicy=resize&w=650'), 
    (2016, 'Honda', 'Odyssey', 'Van', '$20,389', '23,159', '3.5L V-6 Cyl', 'Automatic', 'Obsidian Blue Pearl', 'Gray', 'https://pictures.dealer.com/e/echoparklongbeach/0821/6bb6afc5b832d603d418f30056cfb553x.jpg?impolicy=resize&w=650'), 
    (2018, 'Honda', 'Odyssey', 'Van', '$23,249', '21,784', '3.5L V-6 Cyl', 'Automatic', 'Modern Steel', 'Gray', 'https://pictures.dealer.com/e/echoparklongbeach/1488/d537d5d1f1e258d3cd58847a9bae0d3fx.jpg?impolicy=resize&w=650'), 
    (2016, 'Honda', 'Odyssey', 'Van', '$21,369', '17,467', '3.5L V-6 Cyl', 'Automatic', 'Modern Steel', 'Gray', 'https://pictures.dealer.com/e/echoparkcharlotte/0894/48e263d903e5fb70f0c37eea55db2f78x.jpg?impolicy=resize&w=650'), 
    (2019, 'Toyota', 'Sienna', 'Van', '$24,789', '38,984', '3.5L V-6 Cyl', 'Automatic', 'Midnight Black', 'Ash', 'https://pictures.dealer.com/e/echoparknewbraunfels/0544/215c855e2bcdde87a893855bfa593fe7x.jpg?impolicy=resize&w=650'), 
    (2019, 'Toyota', 'Sienna', 'Van', '$26,159', '26,988', '3.5L V-6 Cyl', 'Automatic', 'Predawn Gray Mica', 'Ash', 'https://pictures.dealer.com/e/echoparkhouston/0059/54c6f02309b9606cd5cbf9b64baadb25x.jpg?impolicy=resize&w=650'), 
    (2019, 'Toyota', 'Sienna', 'Van', '$26,789', '24,461', '3.5L V-6 Cyl', 'Automatic', 'Midnight Black', 'Ash', 'https://pictures.dealer.com/e/echoparkhouston/1347/0b33cae0fbb17a323385bd4626a09c13x.jpg?impolicy=resize&w=650'), 
    (2017, 'Toyota', 'Prius', 'Wagon', '$18,309', '38,728', '1.8L I-4 Cyl', 'Automatic', 'Blue', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1238/8cc6048dc4176c1a4411b310449d6f40x.jpg?impolicy=resize&w=650'),
    (2015, 'Scion', 'xB', 'Wagon', '$10,499', '64,443', '2.4L I-4 Cyl', 'Automatic', 'Classic Silver', 'Dark Charcoal', 'https://pictures.dealer.com/e/echoparkwestsanantonio/0410/9c985e7a7a76e3a439fa89f024cdd8a2x.jpg?impolicy=resize&w=650'), 
    (2017, 'Subaru', 'Impreza', 'Other', '$15,489', '31,643', '2.0L H-4 Cyl', 'Automatic', 'Crystal Black Silica', 'Ivory', 'https://pictures.dealer.com/e/echoparkthornton/1633/a34434fa2474a4732abe47742919b688x.jpg?impolicy=resize&w=650'), 
    (2017, 'Subaru', 'Impreza', 'Other', '$17,389', '15,017', '2.0L H-4 Cyl', 'Automatic', 'Crystal White Pearl', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0706/0e8d4a5f6d7ce1f034ac8ce5daa18570x.jpg?impolicy=resize&w=650'), 
    (2017, 'Subaru', 'Impreza', 'Other', '$17,489', '30,468', '2.0L H-4 Cyl', 'Automatic', 'Crystal White Pearl', 'Ivory', 'https://pictures.dealer.com/e/echoparkthornton/0885/28e7a3a51952ee5ef946bee592b295d4x.jpg?impolicy=resize&w=650'), 
    (2018, 'Subaru', 'Impreza', 'Other', '$16,989', '28,782', '2.0L H-4 Cyl', 'Automatic', 'Crystal Black Silica', 'Ivory', 'https://pictures.dealer.com/e/echoparkcoloradosprings/1161/95dd43f52be5f0b0e24b18da39d6221fx.jpg?impolicy=resize&w=650'), 
    (2017, 'Subaru', 'Impreza', 'Other', '$17,489', '18,071', '2.0L H-4 Cyl', 'Automatic', 'Venetian Red Pearl', 'Ivory', 'https://pictures.dealer.com/e/echoparkcoloradosprings/1072/e9249936538c239fe2f71abee4c5cf95x.jpg?impolicy=resize&w=650'), 
    (2019, 'Subaru', 'Impreza', 'Other', '$18,789', '8,350', '2.0L H-4 Cyl', 'Automatic', 'Ice Silver', 'Black', 'https://pictures.dealer.com/e/echoparkcoloradosprings/0726/c6b3a1b946412ec0f5396715cff2b2adx.jpg?impolicy=resize&w=650'),
    (2017, 'Subaru', 'Impreza', 'Other', '$16,789', '15,909', '2.0L H-4 Cyl', 'Automatic', 'Ice Silver', 'Black', 'https://pictures.dealer.com/e/echoparkcharlotte/0884/a03f1e1008ff1193157da0480ed0772dx.jpg?impolicy=resize&w=650'),
    (2016, 'BMW', '328i', 'Other', '$20,589', '37,463', '2.0L H-4 Cyl', 'Automatic', 'Alpine White', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1717/896e28d8275428fc2d5d89c2f4f6f2c2x.jpg?impolicy=resize&w=650'); 
