Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :beacons, only: :index
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
