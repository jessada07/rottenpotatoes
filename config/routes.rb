Rails.application.routes.draw do
  resources :movie, :welcome
  root :to => redirect('/welcome')
  
  get  'auth/:provider/callback' => 'sessions#create'
  get  'logout' => 'sessions#destroy'
  get  'signup' => 'welcome#signup', as: :signup
  post 'signup' => 'sessions#signupdata'
  post 'logindata' => 'sessions#logindata'
  get  'auth/failure' => 'sessions#failure'

end
