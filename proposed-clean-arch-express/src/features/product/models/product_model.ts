/**
 * Functional Approach
 */

import BaseAPI from "../../../utils/entities/base_api.abs.js";

export default class ProductModel extends BaseAPI {
  public constructor(public name: string) {
    super();
  }
}
