const router = require("express").Router();
const mysql = require("mysql");
const { sql, sqlremote } = require("../config/sql");

router.get("/all", async (req, res) => {
  let connection = mysql.createConnection(sqlremote);
  let query = `SELECT * FROM Food;`;
  connection.query(query, function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});
router.get("/random", async (req, res) => {
  let connection = mysql.createConnection(sqlremote);
  let query = `call GetRandomProducts();`;
  connection.query(query, function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});
router.get("/random/restaurants", async (req, res) => {
  let connection = mysql.createConnection(sqlremote);
  let query = `call GetRandomRestaurants();`;
  connection.query(query, function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});
router.get("/categories", function (req, res) {
  let connection = mysql.createConnection(sqlremote);
  let query = `select * from Categories`;
  connection.query(query, function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});
router.get("/restaurant/:restaurantid", async (req, res) => {
  let connection = mysql.createConnection(sqlremote);
  let receivedrestaurant = req.params.restaurantid;
  let query = `call GetAllFoodsFromRestaurant(${receivedrestaurant});`;
  connection.query(query, function (error, results, fields) {
    res.send(results[0]);
    if (error) throw error;
  });
  connection.end();
});
router.get("/restaurant/:restaurantid/information", async (req, res) => {
  let connection = mysql.createConnection(sqlremote);
  let receivedrestaurant = req.params.restaurantid;
  let query = `select R.restaurant_id, R.restaurant_name, R.restaurant_address, R.restaurant_image, C.category_name from Restaurants R JOIN Categories C on R.restaurant_category_id = C.category_id where restaurant_id = ?; call GetAllFoodsFromRestaurant(?)`;
  let restaurantInfo = {};
  connection.query(
    query,
    [parseInt(receivedrestaurant), parseInt(receivedrestaurant)],
    function (error, results, fields) {
      restaurantInfo = results;
      res.send(restaurantInfo);
      if (error) throw error;
    }
  );
  connection.end();
});
router.get("/restaurants/all", function (req, res) {
  let connection = mysql.createConnection(sqlremote);
  let query =
    "SELECT * FROM Restaurants INNER JOIN Categories C on Restaurants.restaurant_category_id = C.category_id;";
  connection.query(query, function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});
router.get("/:foodid", function (req, res) {
  let connection = mysql.createConnection(sqlremote);
  let receivedfood = req.params.foodid;
  let query = `call GetFoodInformation(${receivedfood});`;
  connection.query(query, function (error, results, fields) {
    res.send(results[0]);
    if (error) throw error;
  });
  connection.end();
});
router.get("/:category/food/all", function (req, res) {
  let connection = mysql.createConnection(sqlremote);
  let receivedCategory = req.params.category;
  let query = `select * from Food where category_id = ${receivedCategory};`;
  connection.query(query, function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});

//Shopping cart see
router.get("/:user/:food/add/shoppingcart", function (req, res) {
  let connection = mysql.createConnection(sqlremote);

  let userID = req.params.user;
  let foodID = req.params.food;

  let query = `call AddProductoToShoppingCart(${userID}, ${foodID}, 1)`;
  connection.query(query, function (error, results, fields) {
    console.log(results);
    res.send({ message: "Producto anadido satisfactoriamente" });
    if (error) throw error;
  });
});
//Shopping cart see
router.get("/:user/see/shoppingcart", function (req, res) {
  let connection = mysql.createConnection(sqlremote);
  let userID = req.params.user;
  let query = `call getShoppingCart(${userID});`;
  connection.query(query, function (error, results, fields) {
    res.send(results);
    console.log(results);
    if (error) throw error;
  });
  connection.end();
});
module.exports = router;
