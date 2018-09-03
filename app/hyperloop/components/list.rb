class List < Hyperloop::Component
  render do
    SECTION(class: 'main') do
      INPUT(id: "toggle-all", class:"toggle-all", type:"checkbox")
      LABEL(htmlFor: "toggle-all") { 'Mark all as complete' }
      UL(class: 'todo-list') do
        Todo.each do |item|
          ListItem(item: item)
        end
      end
    end
  end
end