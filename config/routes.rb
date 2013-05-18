OEMS::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get 'home/index'
  get 'home/about'
  get 'home/news'
  get 'home/events'
  get 'home/eton'
  get 'home/committee'
  get 'home/members'
  get 'contact/new'

  devise_for :users

  resources :eventitems
  resources :etonmedicals
  resources :newsitems
  resources :committees
  resources :contact

  root :to => 'home#index'
  match 'about' => 'home#about'
  match 'news' => 'home#news'
  match 'events' => 'home#events'
  match 'eton' => 'home#eton'
  match 'committee' => 'home#committee'
  match 'members' => 'home#members'
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'tripartitedinner' => redirect('https://docs.google.com/forms/d/1jvTMWPEscwyubiNcxEkAS7sptZf-x1YPz1IR-g31Whk/viewform?pli=1')
  match 'memberupdate' => redirect('https://docs.google.com/forms/d/1Xg5XJjATKrKKQhGNNRBBbCwa-2RLbF-_H_6iYn2fpR8/viewform?pli=1')
end
