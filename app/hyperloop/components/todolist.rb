  class Todolist < Hyperloop::Router

    history :browser
    route do
      SECTION(class: 'todoapp') do
        Header()
        Route('/:scope', exact: true, mounts: List)
        Footer()
      end
    end
  end

