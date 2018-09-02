Rails.application.routes.draw do
  mount Hyperloop::Engine => '/hyperloop'
  get 'template' => 'static#template'
  root 'hyperloop#todolist'
end
