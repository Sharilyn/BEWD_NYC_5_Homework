Ritly::Application.routes.draw do
        root "home#index"
        resources :urls, only: [:create, :new, :show]

        get '/:code', to: 'urls#redirectors'
        get '/:code/preview', to: 'urls#preview'
  
end
