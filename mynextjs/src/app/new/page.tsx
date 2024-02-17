import { prisma } from "@/db";
import Link from "next/link";
import { redirect } from "next/navigation";

async function createTodo(data: FormData) {
  "use server";

  const title = data.get("title")?.valueOf();

  if (typeof title !== "string" || title.length === 0) {
    throw new Error("Invalid Title");
  }

  await prisma.todo.create({
    data: {
      title: title,
      complete: false,
    },
  });
  redirect("/");
}

export default function NewPage() {
  return (
    <>
      <header className="flex justify-between items-center mb-4">
        <h1 className="text-2xl font-bold">New</h1>
      </header>
      <form action={createTodo} className="flex gap-6 flex-col">
        <input
          type="text"
          name="title"
          className="border border-slate-300 bg-transparent rounded px-2 py-1 focus-within:border-slate-100 outline-none"
        />

        <div className="flex justify-between">
          <Link href=".." className="hover:font-semibold">
            Cancel
          </Link>
          <button type="submit" className="border border-slate-300, px-2 py-1 rounded hover:bg-slate-500">
            Submit
          </button>
        </div>
      </form>
    </>
  );
}
