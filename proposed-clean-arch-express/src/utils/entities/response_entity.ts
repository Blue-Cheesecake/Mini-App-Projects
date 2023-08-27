import { Response } from "express";

export default abstract class ResponseEntity {
  private constructor() {}

  public static ok(res: Response, data: any): void {
    res.status(200).send(data);
  }

  public static created(res: Response, data: any): void {
    res.status(201).send(data);
  }

  public static badRequest(res: Response, data: any): void {
    res.status(400).send(data);
  }
}
