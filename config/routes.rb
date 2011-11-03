Yc::Application.routes.draw do
  resources :jobs
  match "add_job/:id" => "jobs#add_job", :as => "add_job", :via => :put

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  root :to => "home#index"

end
