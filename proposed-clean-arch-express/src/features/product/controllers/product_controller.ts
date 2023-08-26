import { Response, Request } from "express";

export function getAll(req: Request, res: Response) {
  // TODO: fetch db database
  res.send({ msg: "Product data" });
}
