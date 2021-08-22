const router = require("express").Router();
const mysql = require("mysql");
const { sql, sqlremote } = require("../config/sql");

router.get("/food/isrunning", async (req, res) => res.send(true));
router.get("/food/allfood", async (req, res) => {
  let connection = mysql.createConnection(sqlremote);
  connection.query("select * from food", function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});
router.get("/random", async (req, res) => {
  let connection = mysql.createConnection(sqlremote);
  let query = `call GetRandomProducts();`;
  connection.query(query, function (error, results, fields) {
    res.send(results[0]);
    if (error) throw error;
  });
  connection.end();
});
router.get("/categories", function (req, res) {
  let connection = mysql.createConnection(sqlremote);

  let query = `select * from categories`;
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
  let query = `select restaurant_name, restaurant_address from restaurants where restaurant_id = ${receivedrestaurant};`;
  connection.query(query, function (error, results, fields) {
    res.send(results[0]);
    if (error) throw error;
  });
  connection.end();
});
router.get("/:foodid", function (req, res) {
  let connection = mysql.createConnection(sqlremote);
  let receivedfood = req.params.foodid;
  let query = `call GetFoodInformation(${receivedfood});`;
  connection.query(query, function (error, results, fields) {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});

module.exports = router;
