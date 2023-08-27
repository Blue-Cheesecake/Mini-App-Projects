import { Service } from "typedi";
import UserModel from "../models/user_model.js";

@Service()
export default class UserService {
  async getUserById(id: number): Promise<UserModel | null> {
    return null;
  }
}
