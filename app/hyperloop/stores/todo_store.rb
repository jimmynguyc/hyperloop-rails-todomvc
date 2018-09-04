class TodoStore < Hyperloop::Store
  state title: '', scope: :class, reader: true
end