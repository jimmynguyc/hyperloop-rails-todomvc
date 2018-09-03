class Footer < Hyperloop::Component
  render do
    FOOTER(class: 'footer') do
      SPAN(class: 'todo-count', dangerously_set_inner_HTML: { __html: "<strong>0</strong> item left" } )
      UL(class: 'filters') do
        LI { A(class: 'selected', href: '#/') { 'All' } }
        LI { A(href: '#/active') { 'Active' } }
        LI { A(href: '#/completed') { 'Completed' } }
      end
      BUTTON(class: 'clear-completed') { 'Clear completed' }
    end
  end
end