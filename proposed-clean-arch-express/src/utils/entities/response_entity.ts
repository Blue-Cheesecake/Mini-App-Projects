import { Response } from "express";

export default abstract class ResponseEntity {
  private constructor() {}

  public static ok(res: Response, data: object): void {
    res.status(200).send(data);
  }

  public static created(res: Response, data: object): void {
    res.status(201).send(data);
  }
}
