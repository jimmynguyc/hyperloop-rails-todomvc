class Footer < Hyperloop::Component
  render do
    FOOTER(class: 'footer') do
      SPAN(class: 'todo-count') do
        "#{Todo.count} item#{'s' if Todo.count != 1} left"
      end
      UL(class: 'filters') do
        LI { A(class: 'selected', href: '#/') { 'All' } }
        LI { A(href: '#/active') { 'Active' } }
        LI { A(href: '#/completed') { 'Completed' } }
      end
      BUTTON(class: 'clear-completed') { 'Clear completed' }
    end
  end
end