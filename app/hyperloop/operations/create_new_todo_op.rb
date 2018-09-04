class CreateNewTodoOp < Hyperloop::Operation
  step { Todo.create(title: TodoStore.title) }
end