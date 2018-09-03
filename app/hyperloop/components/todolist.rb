  class Todolist < Hyperloop::Component
    render do
      SECTION(class: 'todoapp') do
        Header()
        List()
        Footer()
      end
    end
  end

