Rails.application.routes.draw do
  devise_for :users
  root to: 'site#index'

  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    devise_for :users, :skip=>[:sessions]
  end
end
