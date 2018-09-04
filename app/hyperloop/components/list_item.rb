class ListItem < Hyperloop::Component
  param :item

  render do
    LI(class: css_classes) do
      DIV(class: 'view') do
        INPUT(class: 'toggle', type: 'checkbox', checked: params.item.completed)
          .on(:change) { params.item.update(completed: !params.item.completed) }
        LABEL { params.item.title }
          .on(:double_click) {
            TodoStore.mutate.editing[params.item.id] = true
          }
        BUTTON(class: 'destroy')
          .on(:click) { params.item.destroy }
      end
      EditItem(item: params.item) if TodoStore.editing[params.item.id]

    end
  end

  private
  def css_classes
    classes = []
    classes << (params.item.completed ? 'completed' : '')
    classes << 'editing' if TodoStore.editing[params.item.id]

    classes.join(' ')
  end
end

class EditItem < Hyperloop::Component
  param :item
  after_mount do
    refs['editor'].focus()
  end

  render do
    INPUT(class: 'edit', defaultValue: params.item.title, ref: 'editor')
      .on(:blur) do |e|
        EditTodoOp.run(item: params.item, title: e.target.value)
      end
      .on(:key_press) do |e|
        EditTodoOp.run(item: params.item, title: e.target.value) if e.char_code == 13
      end
  end
end