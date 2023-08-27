import "reflect-metadata";
import express, { Request, Response } from "express";
import bodyParser from "body-parser";
import productRouter from "./features/product/routes/product_route.js";
import userRouter from "./features/user/routes/user_route.js";
import SimpleMessageModel from "./utils/models/simple_message_model.js";

const port: number = 8080;
const app = express();
const prefix = "/api/v1";

app.use(bodyParser.json());

app.use(prefix, productRouter);
app.use(prefix, userRouter);

app.use((req: Request, res: Response) => {
  res.status(404).send(new SimpleMessageModel("Not found this api"));
});

app.listen(port, "localhost", () => {
  console.log(`Server running on port: ${port}`);
});
