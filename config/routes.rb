Rails.application.routes.draw do
  get 'welcome' => 'welcome#index'

  resources :movie
  root :to => redirect('/movie')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
