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
  let userName = req.body.userFullName;
  let userEmail = req.body.userEmail;
  let userPassword = req.body.userPassword;

  let query = `call signUpUser('${userName}','${userEmail}','${userPassword}')`;
  let connection = mysql.createConnection(sqlremote);
  connection.query(query, (error, results, fields) => {
    console.log(results);
    if (error) {
      res.send({ status: "error", data: error });
    } else {
      res.send({ status: "done", data: results });
    }
  });
  connection.end();
});
module.exports = router;
