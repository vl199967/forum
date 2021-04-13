Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :posts


  root 'posts#index'
 devise_scope :user do
  get '/users/sign_out', to: 'devise/sessions#destroy'
 end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
