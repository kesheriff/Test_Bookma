Rails.application.routes.draw do

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  resources :movie_from_tmdb
  root to: 'movies#index'

  get 'search' => 'movie_from_tmdb#index' , as:'search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end