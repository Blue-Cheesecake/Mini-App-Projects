/**
 * Functional Approach
 */

import ProductModel from "../models/product_model.js";
import ProductRepository from "../repositories/product_repository.js";

function getAllProducts(): Array<ProductModel> {
  return ProductRepository.getAllProducts();
}

const ProductService = {
  getAllProducts: getAllProducts,
};

export default ProductService;
