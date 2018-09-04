class EditTodoOp < Hyperloop::Operation
  param :title
  param :item

  step { params.item.update(title: params.title) }
  step { TodoStore.mutate.editing[params.item.id] = false }
end