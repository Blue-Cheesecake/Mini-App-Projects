/**
 * Functional Approach
 */

import ProductModel from "../models/product_model.js";

function getAllProducts(): Array<ProductModel> {
  return [new ProductModel("iPhone 14"), new ProductModel("iPhone 13 Mini")];
}

const ProductRepository = {
  getAllProducts: getAllProducts,
};

export default ProductRepository;
