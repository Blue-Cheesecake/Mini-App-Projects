import { TodoItem } from "@/components/TodoItem";
import { prisma } from "@/db";
import Link from "next/link";

async function toggleTodo(id: string, complete: boolean) {
  "use server";

  await prisma.todo.update({ where: { id }, data: { complete: complete } });
}

export default async function Home() {
  const todos = await prisma.todo.findMany();

  return (
    <>
      <header className="flex justify-between items-center">
        <h1 className="text-2xl ">Todos</h1>
        <Link href="/new">
          <div className="border border-slate-300 px-3 py-2 rounded hover:bg-slate-700">
            <span className="text-base">New</span>
          </div>
        </Link>
      </header>

      <ul className="pl-4">
        {todos.map((todo) => (
          <TodoItem key={todo.id} {...todo} callback={toggleTodo} />
        ))}
      </ul>
    </>
  );
}
