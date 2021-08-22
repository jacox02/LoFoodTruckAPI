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
  let query = `select restaurant_name, restaurant_address from Restaurants where restaurant_id = ${receivedrestaurant};`;
  let restaurantInfo = {};
  connection.query(query, function (error, results, fields) {
    restaurantInfo = results;
    if (error) throw error;
  });
  res.send(restaurantInfo);
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

module.exports = router;
