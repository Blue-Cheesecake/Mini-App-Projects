import BaseAPI from "../entities/base_api.abs.js";

export default class SimpleMessageModel extends BaseAPI {
  public constructor(public message: string) {
    super();
  }
}
