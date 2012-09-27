Gallery::Application.routes.draw do
  resources :paintings
  root to: 'paintings#index'
end
