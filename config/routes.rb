Rails.application.routes.draw do

  scope :api do
    resources :users, except: [:create]
    resources :papers
    resources :organisms
    resources :groups

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
