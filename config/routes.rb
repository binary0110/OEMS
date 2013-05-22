OEMS::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get 'home/index'
  get 'home/about'
  get 'newsitem/index'
  get 'eventitem/index'
  get 'etonmedical/index'
  get 'committee/index'
  get 'contact/new'

  devise_for :users

  resources :committees
  resources :contacts
  resources :etonmedicals
  resources :eventitems
  resources :newsitems

  root :to => 'home#index'
  match 'about' => 'home#about'
  match 'news' => 'newsitem#index'
  match 'oemsevents' => 'eventitem#index'
  match 'etonevents' => 'etonmedical#index'
  match 'oemscommittee' => 'committee#index'
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'tripartitedinner' => redirect('https://docs.google.com/forms/d/1jvTMWPEscwyubiNcxEkAS7sptZf-x1YPz1IR-g31Whk/viewform?pli=1')
  match 'memberupdate' => redirect('https://docs.google.com/forms/d/1Xg5XJjATKrKKQhGNNRBBbCwa-2RLbF-_H_6iYn2fpR8/viewform?pli=1')
end
