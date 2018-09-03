class List < Hyperloop::Component
  render do
    SECTION(class: 'main') do
      INPUT(id: "toggle-all", class:"toggle-all", type:"checkbox")
      LABEL(htmlFor: "toggle-all") { 'Mark all as complete' }
      UL(class: 'todo-list') do
        LI(class: 'completed') do
          DIV(class: 'view') do
            INPUT(class: 'toggle', type: 'checkbox', defaultChecked: true)
            LABEL { ' Taste JavaScript' }
            BUTTON(class: 'destroy')
          end
          INPUT(class: 'edit', defaultValue: 'Create a TodoMVC template')
        end
        LI do
          DIV(class: 'view') do
            INPUT(class: 'toggle', type: 'checkbox', defaultChecked: false)
            LABEL { ' Buy a unicorn' }
            BUTTON(class: 'destroy')
          end
          INPUT(class: 'edit', defaultValue: 'Rule the web')
        end
      end
    end
  end
end