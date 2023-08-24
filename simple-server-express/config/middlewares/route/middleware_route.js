const express = require("express");
const router = express.Router();

router.use("/", (req, res, next) => {
  console.log("middleware 1");
  console.log(req.body);
  next();
});

router.use("/", (req, res, next) => {
  console.log("middleware 2");
  next();
});

module.exports = router;
