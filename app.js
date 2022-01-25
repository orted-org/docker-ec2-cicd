require("dotenv").config();
const express = require("express");
const app = express();

const PORT = process.env.PORT || 8080;
const API_VERSION = "4.0.0";

app.get("/health", (req, res, next) => {
  res.send({ status: "ok" });
});

app.get("/version", (req, res, next) => {
  res.send({ version: API_VERSION });
});

app.get("/date", (req, res, next) => {
  const date = new Date();
  res.send({ date });
});

app.listen(PORT, () => {
  console.log("app running on port", PORT);
});
