class Header < Hyperloop::Component
  render do
    HEADER(class: 'header') do
      H1 { 'todos' }
      INPUT(class: 'new-todo', placeholder: 'What needs to be done?', value: TodoStore.title)
        .on(:change) { |e| TodoStore.mutate.title e.target.value }
        .on(:key_press) do |e|
          CreateNewTodoOp.run if e.char_code == 13
        end
    end
  end
end