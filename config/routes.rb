Rails.application.routes.draw do
  scope '/api', defaults: { format: :json } do
    resources :products
    resources :users
    post 'signin', to: 'authentication#authenticate'
    post 'signup', to: 'users#create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
