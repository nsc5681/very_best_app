Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace,
        defaults: { format: :jsonapi } do
    scope module: "api/v1", as: "api" do
      resources :favorites

      resources :dishes

      resources :restaurants

      resources :users

      resources :cuisines
    end
    mount VandalUi::Engine, at: "/vandal"
    # your routes go here
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "cuisines#index"
  resources :favorites
  resources :dishes
  resources :restaurants
  devise_for :users
  resources :users
  resources :cuisines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
