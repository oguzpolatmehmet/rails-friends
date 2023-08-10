Rails.application.routes.draw do
  # devise_for :users
  devise_for :users 
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :friends
  get 'about/index'
  get 'home/index'
  # get 'home/index' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'friends#index'


  # Defines the root path route ("/")
  # root "articles#index"
end
