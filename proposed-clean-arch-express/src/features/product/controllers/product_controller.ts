/**
 * Functional Approach
 */

import { Response, Request } from "express";
import ProductService from "../services/product_service.js";
import ResponseEntity from "../../../utils/entities/response_entity.js";

function getAll(req: Request, res: Response) {
  ResponseEntity.created(res, ProductService.getAllProducts());
}

const ProductController = {
  getAll: getAll,
};

export default ProductController;
