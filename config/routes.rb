Rails.application.routes.draw do
  root 'webhook_handler#index'
  post 'webhook_handler/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
