# Stored procedure to get 10 random restaurants
DELIMITER //
CREATE PROCEDURE GetRandomRestaurant()
	SELECT t.*
FROM Restaurants AS t
INNER JOIN
    (SELECT ROUND(
       RAND() *
      (SELECT MAX(restaurant_id) FROM Restaurants )) AS id
     ) AS x
WHERE
    t.restaurant_id
        >= x.id
LIMIT 10;
DELIMITER ;

# Stored procedure to get 10 random products
DELIMITER //
CREATE PROCEDURE GetRandomProducts()
	SELECT t.*
FROM Restaurants AS t
INNER JOIN
    (SELECT ROUND(
       RAND() *
      (SELECT MAX(restaurant_id) FROM Restaurants )) AS id
     ) AS x
WHERE
    t.restaurant_id
        >= x.id
LIMIT 10;
DELIMITER ;

# Stored procedure to get 10 random products
DELIMITER //
CREATE PROCEDURE GetRandomProducts()
	SELECT t.*
FROM Food AS t
INNER JOIN
    (SELECT ROUND(
       RAND() *
      (SELECT MAX(restaurant_id) FROM Food )) AS id
     ) AS x
WHERE
    t.food_id
        >= x.id
LIMIT 10;
DELIMITER ;


#Inserts
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('The Philly Cheese', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo', 250, 2, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Llegó Juanita', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo', 350, 1, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Ta'' Montao', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo', 400, 3, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('El Tipiquito', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 500, 3, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Aguachile', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Bolillos', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Burrito', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Burro percherón', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Camote', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chahuis', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cemitas sandwiches', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 350, 1, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chalupa', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 350, 2, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Chapulines', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 350, 22, 11, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Charales', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chicharrón', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chilaquiles', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chimichangas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Choriqueso', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chorizo', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cochinita pibil', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cocido', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cóctel de camarón and other seafood cocktails', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Corunda', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Curtido', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Elote', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Empanadas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Enchilada', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Enfrijoladas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Ensalada de fruta', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Entomatadas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Escamoles', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Fajitas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Filete de pescado', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Flautas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Frijoles charros', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Fritada', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Gorditas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Gringas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO sql5432170.Food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Huauzontles', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');


INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (2, 'Los Muyayo', 'Antes del club, Calle Manuel de Jesús Troncoso #63, Santo Domingo', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (3, 'Lincoln Food Truck Park', 'Av. Abraham Lincoln 504, Santo Domingo', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (4, 'Fratellino – ', ' FL', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (1, 'Los Jefes', 'Av. Gustavo Mejía Ricart 62-66, Santo Domingo', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (5, 'Yardie Spice – Homestead', ' FL', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (6, 'Sweet Rice – Gardena', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (7, 'Soichi Sushi – San Diego', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (8, 'Pikul Thai Bistro – Fairfield', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (9, 'Kahuku Farms – Kahuku', ' HI', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (10, 'Shish Ke Baba – San Francisco', ' CA ', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (11, 'The Fuel Shack – San Clemente', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (12, 'PorkChop & Bubba’s BBQ – Bakersfield', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (13, 'Roundhouse Deli – Roseville', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (14, 'Tommy Tamale Market & Cafe – Grapevine', 'TX', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (15, 'SP Brazilian Steakhouse – Lakeway', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (16, 'Kra Z Kai’s Laotian Barbeque – Corona', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (17, 'Karved – Las Vegas', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (18, 'Southern Charm Cafe – Cape Canaveral', ' FL', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (19, 'Gino’s Deli Stop N Buy – San Antonio', ' TX', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (20, 'Craft Pita – Houston', ' TX', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (21, 'Taneda Sushi in Kaiseki – Seattle', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (22, 'Mumbo Gumbo PDX – Portland', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (23, 'Garlic Yuzu – Las Vegas', ' NV ', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (24, 'Mr bibi – Oceanside', ' CA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (25, 'Bulegreen Cafe Yard – Oakland Park', ' FL', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (26, 'Sky Rocket Burger – Dallas', ' TX', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (27, 'Scotty’s Cafe – Columbus', ' OH', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (28, 'The Aussie Grind – Frisco', ' TX', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (29, 'Greek Unique – Ashburn', ' VA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (30, 'Yahya’s Mediterranean Grill & Pastries – Denver', ' CO', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (31, 'Nini’s Deli – Chicago', ' IL', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (32, 'Lewis Barbecue – Charleston', ' SC', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (33, 'Daybreak Pleasant Street – Gainesville', ' FL', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (34, 'Otis – Brooklyn', ' NY', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (35, 'ACHILLES – Santa Clara', ' WA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (36, 'Gotta B Crepes – Evanston', ' IL', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (37, 'Taqueria La Familia – Denver', ' WA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (38, 'Hometown Cafe & Poké Bar – Providence', ' WA', 5);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (39, 'Zaap Thai – Portland', ' OR', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (40, 'Asiana Thai & Sushi – Cincinnati', ' OH', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (41, 'Selam Ethiopian & Eritrean Cuisine – Orlando', ' WA', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (42, 'Chellas Arepa Kitchen – Lancaster', ' WA', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (43, 'New Mexico Tamale Co – Ferndale', ' WA', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (44, 'German Knoodle – St. Petersburg', ' WA', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (45, 'Kuji Asian Grill – Woodland', ' CA', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (46, 'Bombay River – Red Bank', ' WA', 10);
INSERT INTO sql5432170.Restaurants (restaurant_id, restaurant_name, restaurant_address, restaurant_category_id) VALUES (47, 'Carmelina’s – Boston', ' WA', 10);