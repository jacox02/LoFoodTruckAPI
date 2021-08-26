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
  let userName = req.body.userEmail;
  let userEmail = req.body.userFullName;
  let userPassword = req.body.userPassword;

  let query = `call signUpUser('${userName}','${userEmail}','${userPassword}')`;
  let connection = mysql.createConnection(sqlremote);
  connection.query(query, (error, results, fields) => {
    console.log(results);
    res.send(results);
    if (error) res.send(error);
  });
  connection.end();
});
module.exports = router;
