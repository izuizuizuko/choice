Rails.application.routes.draw do 
  root 'first#index'
  resources :top, only: [:new, :show, :index, :edit] 
  resources :questions, only: [:new, :create, :show, :index, :edit] 
  resources :answers, :except => [:new]
  resources :products , only: [:new, :create, :show, :index, :edit] 
  resources :images , only: [:new, :create, :show, :index, :edit] 
  resources :contacts , only: [:new, :create, :show, :index, :edit] 
  resources :flowers , only: [:new, :create, :show, :index, :edit] 
  resources :hordeolums, only: [:new, :create, :show, :index, :edit] 
  resources :kids, only: [:new, :show, :create, :index, :edit] 
  resources :reds, only: [:new, :show, :create, :index, :edit] 
  resources :rests, only: [:new, :show, :create, :index, :edit] 
  resources :strains, only: [:new, :create, :show, :index, :edit] 
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
