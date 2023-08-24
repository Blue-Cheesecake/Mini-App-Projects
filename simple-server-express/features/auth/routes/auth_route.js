const express = require("express");
const router = express.Router();

router.post("/auth", (req, res) => {
  console.log("Auth API");
  console.log(req.body);
  console.log(`Request: ${req.body}`);
  console.log(`Request: ${req.body.email}`);
  res.status(200).send({
    token: "jngoin4q3gq4ngiq4un22",
  });
});

module.exports = router;
