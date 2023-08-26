import express, { Router } from "express";
import { getAll } from "../controllers/product_controller.js";

const router: Router = express.Router();

router.get("/", getAll);

export default router;
