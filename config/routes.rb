Rails.application.routes.draw do
  ## Devise mappings
  # => Docs state that you can define more than one model. Is that necessary?
  # devise_for :users, :controllers => {} <= This conflicts with the mapping for the API.
  devise_for :users, :skip => [:sessions]

  root to: 'site#index'
  get "about" => 'site#about', as: :about

  namespace :api, defaults: { format: 'json'} do
    namespace :auth do
      get 'signin'
      get 'signout'
      get 'register' => 'registrations#create', as: :register
    end
    resources :users, :only => [:create, :update, :destroy, :show]
    resources :bgtests
    resources :injections
    resources :meals
  end
end
