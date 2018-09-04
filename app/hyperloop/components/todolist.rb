  class Todolist < Hyperloop::Router

    history :browser
    route do
      SECTION(class: 'todoapp') do
        Header()
        Route('/', exact: true, mounts: List)
        Route('/:scope', exact: true, mounts: List)
        Footer()
      end
    end
  end

