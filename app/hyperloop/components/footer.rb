class Footer < Hyperloop::Component
  include HyperRouter::ComponentMethods

  render do
    FOOTER(class: 'footer') do
      SPAN(class: 'todo-count') do
        "#{Todo.active.count} item#{'s' if Todo.active.count != 1} left"
      end
      UL(class: 'filters') do
        LI { NavLink('/all', active_class: 'selected') { 'All' } }
        LI { NavLink('/active', active_class: 'selected') { 'Active' } }
        LI { NavLink('/completed', active_class: 'selected') { 'Completed' } }
      end
      BUTTON(class: 'clear-completed') { 'Clear completed' }
    end
  end
end