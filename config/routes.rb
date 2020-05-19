Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :tweeets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tweeets#index'
end
