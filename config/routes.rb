Rails.application.routes.draw do
  ## Devise mappings
  # => Docs state that you can define more than one model. Is that necessary?
  # devise_for :users, :controllers => {} <= This conflicts with the mapping for the API.

  root to: 'site#index'
  get "about" => 'site#about', as: :about

  namespace :api do
    devise_for :users, :skip => [:sessions], :controllers => { registrations: 'api/registrations' }
    namespace :auth do
      get 'signin'
      get 'signout'
    end
    resources :bgtests
    resources :injections
    resources :meals
  end
end
