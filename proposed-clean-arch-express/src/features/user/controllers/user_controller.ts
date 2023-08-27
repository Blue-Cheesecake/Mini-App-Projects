import { Request, Response } from "express";
import { Service, Container, Inject } from "typedi";
import UserService from "../services/user_service.js";
import ResponseEntity from "../../../utils/entities/response_entity.js";
import UserModel from "../models/user_model.js";

@Service()
export default class UserController {
  public constructor(@Inject() public userService: UserService) {}

  getUserById = async (req: Request, res: Response) => {
    const data: UserModel | null = await this.userService.getUserById(1);

    if (data === null) {
      ResponseEntity.badRequest(res, "Something bad happen");
      return;
    }
    ResponseEntity.ok(res, data);
  };
}
