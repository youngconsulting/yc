Yc::Application.routes.draw do
  resources :jobs

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

root :to => "home#index"

end
