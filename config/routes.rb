Rails.application.routes.draw do
  
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  
  resources :artists do
    resources :songs, only: [:index, :show, :new, :create]
  end

  get 'artists/:id/songs', to: 'songs#index'
  get 'artists/:id/songs/:artist_id', to: 'songs#show' 

end
