OEMS::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get 'home/index'
  get 'home/about'
  get 'home/news'
  get 'home/events'
  get 'home/committee'
  get 'home/members'
  get 'contact/new'

  devise_for :users

  resources :eventitems
  resources :newsitems
  resources :committees
  resources :contact

  root :to => 'home#index'
  match 'about' => 'home#about'
  match 'news' => 'home#news'
  match 'events' => 'home#events'
  match 'committee' => 'home#committee'
  match 'members' => 'home#members'
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
