const express = require("express");
const router = express.Router();

const prefix = "/admin";

router.get(`${prefix}/info`, (req, res) => {
  res.status(201).send({
    name: "Sinut",
    age: "21",
  });
});

module.exports = router;
