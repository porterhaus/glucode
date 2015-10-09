Rails.application.routes.draw do
  get 'notifications/index'

  ## Devise mappings
  # => Docs state that you can define more than one model. Is that necessary?
  # devise_for :users, :controllers => {} <= This conflicts with the mapping for the API.
  devise_for :users, :skip => [:sessions]

  root to: 'site#index'
  get "about" => 'site#about', as: :about
  resources :notifications, :only => [:index]

  namespace :api, defaults: { format: 'json'} do
    namespace :auth do
      get 'signin'
      get 'signout'
    end
    resources :activities do
      get 'recent', on: :collection
    end

    resources :sessions, :only => [:create, :destroy]
    resources :users, :only => [:create, :update, :destroy, :show]
    resources :bgtests
    resources :injections
    resources :meals
  end
end
