Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'health_check' => 'health_check#index'
      resources :images, only: [:index, :show, :create, :destroy]
    end
  end
end
