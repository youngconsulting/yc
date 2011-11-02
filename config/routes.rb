Yc::Application.routes.draw do
  resources :jobs
  match "add_job" => ":jobs/:add_job_to_user/:id", :via => :put

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

root :to => "home#index"

end
