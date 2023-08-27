export default abstract class BaseAPI {
  public toJson(): object {
    return JSON.parse(JSON.stringify(this));
  }

  public static fromJson<T>(json: string): T {
    return Object.assign(this, JSON.parse(json));
  }
}
