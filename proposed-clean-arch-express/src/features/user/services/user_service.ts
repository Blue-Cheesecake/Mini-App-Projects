import { Inject, Service } from "typedi";
import UserModel from "../models/user_model.js";
import UserRepository from "../repositories/user_repository.js";

@Service()
export default class UserService {
  public constructor(
    @Inject() private readonly userRepository: UserRepository
  ) {}

  async getUserById(id: number): Promise<UserModel | null> {
    const response: UserModel | null = await this.userRepository.getUserById(1);
    return response;
  }
}
