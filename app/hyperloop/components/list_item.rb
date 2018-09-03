class ListItem < Hyperloop::Component
  param :item

  render do
    LI(class: params.item.completed ? 'completed' : '') do
      DIV(class: 'view') do
        INPUT(class: 'toggle', type: 'checkbox', checked: params.item.completed)
          .on(:change) { params.item.update(completed: !params.item.completed) }
        LABEL { params.item.title }
        BUTTON(class: 'destroy')
          .on(:click) { params.item.destroy }
      end
      INPUT(class: 'edit', defaultValue: params.item.title)
    end
  end
end
