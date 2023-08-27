import express, { Router } from "express";
import ProductController from "../controllers/product_controller.js";

const router: Router = express.Router();
const prefix = "/product";

router.get(prefix, ProductController.getAll);

export default router;
