"use client";

type ToDoItemProps = {
  id: string;
  title: string;
  complete: boolean;
  callback: (id: string, toggleStatus: boolean) => void;
};

export function TodoItem(props: Readonly<ToDoItemProps>) {
  return (
    <li className="flex gap-1 items-center">
      <input
        id={props.id}
        type="checkbox"
        className="cursor-pointer peer"
        defaultChecked={props.complete}
        onChange={(e) => props.callback(props.id, e.target.checked)}
      />
      <label htmlFor={props.id} className="peer-checked:line-through peer-checked:text-slate-500">
        {props.title}
      </label>
    </li>
  );
}
