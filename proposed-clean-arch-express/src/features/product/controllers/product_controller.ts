import { Response, Request } from "express";
import ProductService from "../services/product_service.js";

function getAll(req: Request, res: Response) {
  res.send(ProductService.getAllProducts());
}

const ProductController = {
  getAll: getAll,
};

export default ProductController;
