const express = require("express");
const morgan = require("morgan");
const foodroutes = require("./routes/index.routes");
const userroutes = require("./routes/user.routes");
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
//Endpoint to check if API is running
app.get("/api/", (req, res) => {
  res.send(true);
});
app.use("/api/food/", foodroutes);
app.use("/api/users/", userroutes);

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
