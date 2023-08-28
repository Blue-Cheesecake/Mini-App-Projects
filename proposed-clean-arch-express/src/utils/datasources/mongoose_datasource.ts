import { ServerApiVersion } from "mongodb";
import mongoose from "mongoose";

const url = "";

export async function run() {
  try {
    await mongoose.connect(url, {
      serverApi: {
        version: ServerApiVersion.v1,
        strict: true,
      },
    });
    console.log("Successfully connect to mongodb with mongoose...");
  } catch (error) {
    console.log("Couldn't connect to mongodb with mongoose...");
  } finally {
    await mongoose.connection.close();
  }
}
