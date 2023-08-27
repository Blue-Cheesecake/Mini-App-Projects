import { Request, Response } from "express";
import { Service, Container, Inject } from "typedi";
import UserService from "../services/user_service.js";
import ResponseEntity from "../../../utils/entities/response_entity.js";

@Service()
export default class UserController {
  constructor(@Inject() public userService: UserService) {}

  getUserById = (req: Request, res: Response) => {
    ResponseEntity.ok(res, this.userService.getUserById(1));
  };
}
