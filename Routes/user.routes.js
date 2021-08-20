const router = require("express").Router();
const mysql = require("mysql");
const { sql } = require("../config/sql");

router.get("/user/addtocart/:userid/:foodid/:quantity", (req, res) => {
  let connection = mysql.createConnection(sql);

  let receiveduserid = req.params.userid;
  let receivedfoodid = req.params.foodid;
  let receivedquantity = req.params.quantity;

  let query = `call AddProductoToShoppingCart(${receiveduserid}, ${receivedfoodid});`;
  connection.query(query, function (error, results, fields) {
    if (results.affectedRows != 0) {
      res.send({ message: "Producto anadido satisfactoriamente" });
    }
    // res.send(results);
    if (error) throw error;
  });
  connection.end();
});

router.get("/user/login/", (req, res) => {
  //Here we gonna handle the body of the request and get the login information
  let connection = mysql.createConnection(sql);
  //Use passport.authenticate
});
router.get("/user/signup/", (req, res) => {
  //Here we gonna handle the body of the request and get the register information
  let connection = mysql.createConnection(sql);
  //Use passport.authenticate
});
module.exports = router;
