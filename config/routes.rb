Rails.application.routes.draw do 
  root 'first#index'
 
  
  resources :questions, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :top, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :answers, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :products, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :contacts, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :flowers, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :hordeolums, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :kids, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :reds, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :rests, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :strains, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


end

