Rails.application.routes.draw do 
  root 'first#index'
  resources :top, only: [:new, :show, :index, :edit] 

  resources :questions
  resources :answers
  resources :products  
  resources :images 
  resources :contacts 
  resources :flowers
  resources :hordeolums
  resources :kids
  resources :red
  resources :rests
  resources :strains

  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

