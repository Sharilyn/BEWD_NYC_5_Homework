MoviesApp::Application.routes.draw do
  get "/search", to: 'search#index'
#  get "/movies/:id", to: 'movies#show', as: 'movie'
  root 'movies#index'
  
  resources :movies
end

