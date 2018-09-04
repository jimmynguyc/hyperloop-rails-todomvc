class CreateNewTodoOp < Hyperloop::Operation
  step { Todo.create(title: TodoStore.title) }
  step { TodoStore.mutate.title '' }
end