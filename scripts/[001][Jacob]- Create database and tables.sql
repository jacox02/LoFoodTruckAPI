CREATE DATABASE IF NOT EXISTS LoFoodTruck;

use LoFoodTruck;

create table if not exists Categories(
    category_id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL,
    PRIMARY KEY ( category_id )
);


create table if not exists Restaurants(
   restaurant_id INT NOT NULL AUTO_INCREMENT,
   restaurant_name VARCHAR(100) NOT NULL,
   restaurant_address VARCHAR(200) NOT NULL,
   restaurant_category_id INT NOT NULL,
   PRIMARY KEY ( restaurant_id ),
   FOREIGN KEY ( restaurant_category_id )  REFERENCES Categories(category_id)
);
CREATE table if not exists Food(
    food_id INT NOT NULL AUTO_INCREMENT,
    food_name VARCHAR(100) NOT NULL,
    food_description VARCHAR(900) NOT NULL,
    food_ingredients VARCHAR(900) NOT NULL,
    food_price INT(10) NOT NULL,
    restaurant_id INT NOT NULL,
    category_id INT NOT NULL,
    food_image_uri VARCHAR(500) NOT NULL,
    PRIMARY KEY ( food_id ),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE table if not exists UserShoppingCart(
    user_id INT NOT NULL,
    food_id INT NOT NULL,
    food_qty INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

CREATE table if not exists User(
    user_id INT NOT NULL AUTO_INCREMENT,
    user_mail VARCHAR(100) NOT NULL,
    user_fullname VARCHAR(100) NOT NULL,
    user_password VARCHAR(400) NOT NULL,
    user_address VARCHAR(400) NOT NULL,
    PRIMARY KEY ( user_id )
);