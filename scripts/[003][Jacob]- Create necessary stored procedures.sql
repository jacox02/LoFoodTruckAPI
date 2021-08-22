

# Stored procedure get all restaurants

DELIMITER //
CREATE PROCEDURE GetAllRestaurants()
BEGIN
	SELECT *  FROM Restaurants;
END //
DELIMITER ;

# Stored procedure get all restaurants

DELIMITER //
CREATE PROCEDURE GetAllFoodsFromRestaurant(restaurantID INT)
BEGIN
	SELECT * FROM Food WHERE restaurant_id = restaurantID;
END //
DELIMITER ;

# Stored procedure get food information

DELIMITER //
CREATE PROCEDURE GetFoodInformation(foodId INT)
BEGIN
	SELECT * FROM Food WHERE food_id = foodId;
END //
DELIMITER ;



# Stored procedure add producto to the cart

DELIMITER //
CREATE PROCEDURE AddProductoToShoppingCart(userID INT, foodId INT, foodQty INT )
BEGIN
	DECLARE existe BOOL default false;
	SELECT EXISTS(SELECT * FROM UserShoppingCart where food_id = foodId AND user_id = userID)
	INTO existe;
    IF existe = TRUE THEN
    UPDATE UserShoppingCart SET food_qty = food_qty + 1 where user_id = userID and food_id = foodId;
        ELSE
   INSERT INTO UserShoppingCart(user_id, food_id, food_qty) VALUES (userID, foodId, foodQty);
END IF;
END //
DELIMITER ;

# Stored procedure get food by category
DELIMITER //
CREATE PROCEDURE GetFoodByCategory(category INT)
BEGIN
	SELECT * FROM Food WHERE category_id = category;
END //
DELIMITER ;


# Stored procedure get food by category
DELIMITER //
CREATE PROCEDURE GetFoodCategories()
BEGIN
	SELECT * FROM Categories;
END //
DELIMITER ;