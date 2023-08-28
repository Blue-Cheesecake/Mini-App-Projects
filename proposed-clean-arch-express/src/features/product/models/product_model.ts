/**
 * Functional Approach
 */

import { Model, Schema, model } from "mongoose";
import BaseAPI from "../../../utils/entities/base_api.abs.js";

interface IProduct {
  name: string;
  version: number;
}

const productSchema = new Schema<IProduct>({
  name: { type: String, required: true },
  version: { type: Number, required: true },
});

export const Product: Model<IProduct> = model<IProduct>(
  "Product",
  productSchema
);

export default class ProductModel extends BaseAPI {
  public constructor(public name: string) {
    super();
  }
}
