const router = require("express").Router();
const mysql = require("mysql");
const { sql, sqlremote } = require("../config/sql");

router.post("/login/", (req, res) => {
  let query = `SELECT * FROM User WHERE user_mail = '${req.body.userEmail}' AND user_password = '${req.body.password}'`;

  let connection = mysql.createConnection(sqlremote);
  connection.query(query, (error, results, fields) => {
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
