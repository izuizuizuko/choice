Rails.application.routes.draw do 
  
  resources :rests
  resources :strains
  root 'first#index'
  resources :questions
  resources :top
  resources :answers, :except => [:new]
  resources :products 
  resources :images 
  resources :contacts 
  resources :flowers 
  resources :hordeolums
  resources :kids
  resources :reds
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
