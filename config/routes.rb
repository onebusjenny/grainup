Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :plants
      resources :waters
    end
  end
end
