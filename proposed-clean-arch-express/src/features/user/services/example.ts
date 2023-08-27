import { Service } from "typedi";

@Service()
export default class ExampleInjectedService {
  printMessage() {
    console.log("I am alive!");
  }
}
