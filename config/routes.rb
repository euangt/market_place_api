Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :create, :show, :update, :destroy ]
      resources :tokens, only: [ :create ]
      resources :products, only: [ :show, :index, :create ]
    end
  end

end
