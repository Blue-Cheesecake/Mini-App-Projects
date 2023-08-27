import express, { Router, Request, Response } from "express";
import UserController from "../controllers/user_controller.js";
import { Container } from "typedi";

const router: Router = express.Router();
const prefix = "/user";
const controller = Container.get(UserController);

router.get(prefix, controller.getUserById);

export default router;
