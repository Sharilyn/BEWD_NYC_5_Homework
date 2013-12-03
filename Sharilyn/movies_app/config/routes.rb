MoviesApp::Application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  get "/search", to: 'search#index'
#  get "/movies/:id", to: 'movies#show', as: 'movie'
  root 'movies#index'
  
  resources :movies
end

