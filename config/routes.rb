Rails.application.routes.draw do
    resources :members do
      resources :videos, except: [:index]
      resources :comments, except: [:show, :index]
    end
end
