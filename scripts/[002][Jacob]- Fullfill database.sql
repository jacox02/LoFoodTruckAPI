INSERT INTO Categories (category_name) value ('Comida Mexicana');
INSERT INTO Categories (category_name) value ('Comida Dominicana');
INSERT INTO Categories (category_name) value ('Pizza');
INSERT INTO Categories (category_name) value ('Hamburgers');
INSERT INTO Categories (category_name) value ('Comida Americana');
INSERT INTO Categories (category_name) value ('Comida Rapida');
INSERT INTO Categories (category_name) value ('Comida Vegetariana');
INSERT INTO Categories (category_name) value ('Mariscos');
INSERT INTO Categories (category_name) value ('Comida Rapida');
INSERT INTO Categories (category_name) value ('Alcohol');
INSERT INTO Categories (category_name) value ('Otros');

INSERT INTO Restaurants(restaurant_name, restaurant_address, restaurant_category_id) values ('Los Jefes', 'Av. Gustavo Mejía Ricart 62-66, Santo Domingo', 5);
INSERT INTO Restaurants(restaurant_name, restaurant_address, restaurant_category_id) values ('Los Muyayo', 'Antes del club, Calle Manuel de Jesús Troncoso #63, Santo Domingo', 5);
INSERT INTO Restaurants(restaurant_name, restaurant_address, restaurant_category_id) values ('Lincoln Food Truck Park', 'Av. Abraham Lincoln 504, Santo Domingo', 10);

INSERT INTO Food(food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES (
                                                                                                                                'The Philly Cheese',
                                                                                                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                                                                                                                                'Pan, Queso, Carne Hangus, Pollo', 250, 2, 4, 'https://www.google.com');
INSERT INTO Food(food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES (
                                                                                                                                'Llegó Juanita',
                                                                                                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                                                                                                                                'Pan, Queso, Carne Hangus, Pollo', 350, 1, 4, 'https://www.google.com');
INSERT INTO Food(food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES (
                                                                                                                                'Ta'' Montao',
                                                                                                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                                                                                                                                'Pan, Queso, Carne Hangus, Pollo', 400, 3, 4, 'https://www.google.com');
INSERT INTO Food(food_name, food_description, food_ingredients, food_price, restaurant_id, category_id, food_image_uri) VALUES (
                                                                                                                                'El Tipiquito',
                                                                                                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                                                                                                                                'Pan, Queso, Carne Hangus, Pollo, Bacon',
                                                                                                                                500,
                                                                                                                                3,
                                                                                                                                11,
                                                                                                                                'https://www.google.com');



insert into User(user_mail, user_fullname, user_password, user_address) values ('johndoe@gmail.com', 'John Doe', 'Password', 'Address');
insert into User(user_mail, user_fullname, user_password, user_address) values ('josemiguel@gmail.com', 'Jose Miguel', 'Password', 'Address');
insert into User(user_mail, user_fullname, user_password, user_address) values ('rr3131@gmail.com', 'Rafael Reyes', 'Password', 'Address');
insert into User(user_mail, user_fullname, user_password, user_address) values ('jc1408@gmail.com', 'Jacob Cuevas', 'Password', 'Address');