const router = require("express").Router();
const mysql = require("mysql");
const { sql, sqlremote } = require("../config/sql");

router.get("/user/addtocart/:userid/:foodid/:quantity", (req, res) => {
  let connection = mysql.createConnection(sqlremote);

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

router.post("/login/", (req, res) => {
  let query = `SELECT * FROM User WHERE user_mail = '${req.body.userEmail}' AND user_password = '${req.body.password}'`;

  let connection = mysql.createConnection(sqlremote);
  connection.query(query, (error, results, fields) => {
    console.log({ response: results });
    res.send(results);
    if (error) console.log(error);
  });
  connection.end();
});
router.post("/signup/", (req, res) => {
  let query = `SELECT * FROM User WHERE user_mail = '${req.body.userName}' AND user_password = '${req.body.password}'`;
  let connection = mysql.createConnection(sqlremote);
  connection.query(query, (error, results, fields) => {
    res.send(results);
    if (error) throw error;
  });
  connection.end();
});
module.exports = router;
