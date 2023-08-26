import express, { Request, Response } from "express";
import bodyParser from "body-parser";
import productRouter from "./features/product/routes/product_route.js";

const port: number = 8080;
const app = express();

app.use(bodyParser.json());

app.use(productRouter);

app.get("/", (req: Request, res: Response) => {
  res.send({ message: "Hello world" });
});

app.listen(port);
