Rails.application.routes.draw do 
  root 'first#index'
  resources :questions
  resources :answers, :except => [:new]
  resources :reactions, :except => [:new]
  get 'top' => 'top#index'
  get 'questions' => 'questions#index'
  get 'answers/new/:questionId' => 'answers#new'
  get 'reactions/new/:answerId' => 'reactions#new'


  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
