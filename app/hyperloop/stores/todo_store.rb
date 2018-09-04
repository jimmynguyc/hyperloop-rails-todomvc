class TodoStore < Hyperloop::Store
  state title: '', scope: :class, reader: true
  state editing: Hash.new { |h, k| h[k] = false }, scope: :class, reader: true
end