Rails.application.routes.draw do
  root 'application#root'
  
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  
  resources :artists do
    resources :songs, shallow: true
  end

  get 'artists/:id/songs', to: 'authors#posts_index'
  get 'artists/:id/songs/:artist_id', to: 'authors#post' 

end
