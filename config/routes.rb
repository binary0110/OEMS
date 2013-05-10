OEMS::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get "home/index"
  get "home/about"
  get 'home/news'
  get 'home/news'
  get 'home/events'
  get 'home/committee'
  get 'home/members'

  devise_for :users

  resources :eventitems
  resources :newsitems
  resources :committees

    root :to => 'home#index'
    match ':action' => 'home#:action'
end
