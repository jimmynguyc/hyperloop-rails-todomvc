class Header < Hyperloop::Component
  render do
    HEADER(class: 'header') do
      H1 { 'todos' }
      INPUT(class: 'new-todo', placeholder: 'What needs to be done?')
    end
  end
end