Rails.application.routes.draw do
  resources :members do
    resources :videos, except: [:index]
    resources :comments, except: [:show, :index]
  end
  root 'welcome#index'
  get '/login' => 'sessions#new', as: 'login'
  get '/sessions' => 'sessions#create', as: 'sessions'
  get '/logout' => 'sessions#destroy', as: 'logout'
  get '/signup' => 'members#new', as: 'signup'
  get '/profile' => 'members#profile', as: 'profile'
end
