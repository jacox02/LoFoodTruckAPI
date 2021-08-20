# Stored procedure to get 10 random restaurants
DELIMITER //
CREATE PROCEDURE GetRandomRestaurant()
	SELECT t.*
FROM restaurants AS t
INNER JOIN
    (SELECT ROUND(
       RAND() *
      (SELECT MAX(restaurant_id) FROM restaurants )) AS id
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
FROM restaurants AS t
INNER JOIN
    (SELECT ROUND(
       RAND() *
      (SELECT MAX(restaurant_id) FROM restaurants )) AS id
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
FROM food AS t
INNER JOIN
    (SELECT ROUND(
       RAND() *
      (SELECT MAX(restaurant_id) FROM food )) AS id
     ) AS x
WHERE
    t.food_id
        >= x.id
LIMIT 10;
DELIMITER ;

#Inserts
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('The Philly Cheese', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo', 250, 2, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Llegó Juanita', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo', 350, 1, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Ta'' Montao', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo', 400, 3, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('El Tipiquito', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 500, 3, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Aguachile', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Bolillos', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Burrito', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Burro percherón', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 3, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Camote', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chahuis', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cemitas sandwiches', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 350, 1, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chalupa', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 350, 2, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Chapulines', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 350, 22, 11, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Charales', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chicharrón', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chilaquiles', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chimichangas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Choriqueso', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Chorizo', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 22, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cochinita pibil', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cocido', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Cóctel de camarón and other seafood cocktails', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Corunda', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 1, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Curtido', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Elote', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Empanadas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Enchilada', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Enfrijoladas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Ensalada de fruta', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Entomatadas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 25, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Escamoles', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Fajitas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Filete de pescado', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Flautas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Frijoles charros', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Fritada', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ('Gorditas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Gringas', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');
INSERT INTO lofoodtruck.food (  food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES ( 'Huauzontles', 'Descripcion de la comida...', 'Pan, Queso, Carne Hangus, Pollo, Bacon', 250, 26, 4, '../images/5.png');