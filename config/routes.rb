Rails.application.routes.draw do
  mount Hyperloop::Engine => '/hyperloop'
  root 'hyperloop#todolist'
end
