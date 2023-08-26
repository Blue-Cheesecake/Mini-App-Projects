const express = require("express");
const app = express();
const bodyParser = require("body-parser");
app.use(bodyParser.json());

// Routing
const adminRoute = require("./features/admin/routes/admin_route");
const middlewareRoute = require("./config/middlewares/route/middleware_route");
const authRoute = require("./features/auth/routes/auth_route");

app.use(middlewareRoute);
app.use(adminRoute);
app.use(authRoute);

app.use((req, res, next) => {
  res.send("<h1> Page not Found</h1>");
});

app.listen(8080);
