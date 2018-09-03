Rails.application.routes.draw do
  mount Hyperloop::Engine => '/hyperloop'
  get 'template' => 'static#template'
  get '/(*other)' => 'hyperloop#todolist'
end
