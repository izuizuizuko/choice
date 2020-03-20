Rails.application.routes.draw do 
  root 'first#index'
  resources :questions, only: [:new, :show, :index, :edit] do
  resources :top, only: [:new, :show, :index, :edit] do
  resources :answers, :except => [:new]
  resources :products , only: [:new, :show, :index, :edit] do
  resources :images , only: [:new, :show, :index, :edit] do
  resources :contacts , only: [:new, :show, :index, :edit] do
  resources :flowers , only: [:new, :show, :index, :edit] do
  resources :hordeolums, only: [:new, :show, :index, :edit] do
  resources :kids, only: [:new, :show, :index, :edit] do
  resources :reds, only: [:new, :show, :index, :edit] do
  resources :rests, only: [:new, :show, :index, :edit] do
  resources :strains, only: [:new, :show, :index, :edit] do
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
