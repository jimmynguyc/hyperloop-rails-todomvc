Rails.application.routes.draw do
  mount Hyperloop::Engine => '/hyperloop'
  post '/clear_completed' => 'serverops#clear_completed'
  get 'template' => 'static#template'
  get '/(*other)' => 'hyperloop#todolist'
end
