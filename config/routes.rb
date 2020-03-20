Rails.application.routes.draw do 
  root 'first#index'
 
  
  resources :questions, only: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :top: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :answers: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :products : [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :images : [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :contacts : [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :flowers : [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :hordeolums: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :kids: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :reds: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :rests: [:new, :create, :show, :index, :edit, :update, :destroy ]
  resources :strains: [:new, :create, :show, :index, :edit, :update, :destroy ]
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


end

