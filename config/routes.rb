Rails.application.routes.draw do
  root :to => 'home#index'

  resources :users, :except => [:destroy, :edit, :update, :new] do
    resources :photos, :only => [:show, :create, :destroy]
  end

  get '/register', to: 'users#new'

  get '/log-in' => 'sessions#new'
  post '/log-in' => 'sessions#create'
  get '/log-out' => 'sessions#destroy', as: :log_out

end
