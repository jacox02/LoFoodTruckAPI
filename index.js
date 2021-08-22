const express = require("express");
const morgan = require("morgan");
const { controller, usercontroller } = require("./Routes/index");
const cors = require("cors");
const { json, urlencoded } = require("body-parser");

const app = express();
const port = 3000;

app.set("port", process.env.PORT || 7000);

app.use(json());
app.use(morgan("dev"));
app.use(cors());

app.use(
  urlencoded({
    extended: true,
  })
);
app.get("/", (req, res) => {
  res.send("Welcome to LoFoodTruck-API");
});
//Endpoint to check if API is running
app.get("/api/", (req, res) => {
  res.send(true);
});

app.use("/api/food/", controller);
app.use("/api/users/", usercontroller);

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
