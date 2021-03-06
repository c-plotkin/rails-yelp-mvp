Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
    resources :restaurants do
      resources :reviews, only: [ :new, :create, :index ]
    end
    resources :reviews, only: [ :show ]
end
