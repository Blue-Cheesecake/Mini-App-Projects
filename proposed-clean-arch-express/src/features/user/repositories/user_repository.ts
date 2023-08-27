import { Service } from "typedi";
import UserModel from "../models/user_model.js";

@Service()
export default class UserRepository {
  public async getUserById(id: number): Promise<UserModel | null> {
    // TODO: fetch user from database
    return Promise.resolve(new UserModel(id, "Sinut", 1));
  }
}
