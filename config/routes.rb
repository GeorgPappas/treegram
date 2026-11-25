Rails.application.routes.draw do
  get '/' => 'home#index'
  resources :users do
    resources :photos
  end

  resources :tags, only: [:create, :destroy]
  resources :follows, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
  get '/log-in' => "sessions#new"
  post '/log-in' => "sessions#create"
  get '/log-out' => "sessions#destroy", as: :log_out

end
