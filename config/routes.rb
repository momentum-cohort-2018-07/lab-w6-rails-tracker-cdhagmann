Rails.application.routes.draw do
  namespace :api do
    resources :creatures do
      resources :notes
    end
  end 
end
