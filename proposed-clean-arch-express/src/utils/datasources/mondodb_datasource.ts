import { MongoClient, ServerApiVersion } from "mongodb";

const url = "";

const mongoClient = new MongoClient(url, {
  serverApi: {
    version: ServerApiVersion.v1,
    strict: true,
  },
});

export async function run() {
  try {
    await mongoClient.connect();
    await mongoClient.db("admin").command({ ping: 1 });

    console.log("Mongodb Connected.");
  } catch (error) {
    console.log("Error on connecting to database");
    console.log(error);
    console.log(console.dir);
  } finally {
    await mongoClient.close();
  }
}
