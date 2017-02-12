Rails.application.routes.draw do
  scope '/api', defaults: { format: :json } do
    resources :products
    resources :users
    resources :owners
    post 'signin', to: 'authentication#authenticate'
    post 'signup', to: 'users#create'
  end
end
