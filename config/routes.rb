Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do

      # post 'cocktails/generate', to: 'cocktails#generate'
      # post 'recipes/bulkcreate', to: 'recipes#bulkcreate'
      # get 'users/:id/spots', to: 'cocktails#index'

      resources :users, except: [:new, :edit]

      resources :spots, except: [:new, :edit]
      resources :user_spots, except: [:new, :edit]
      resources :spot_albums, except: [:new, :edit]
      resources :spot_pictures, except: [:new, :edit]

      resources :routes, except: [:new, :edit]
      resources :user_routes, except: [:new, :edit]
      resources :route_albums, except: [:new, :edit]
      resources :spot_pictures, except: [:new, :edit]

    end
  end

end
