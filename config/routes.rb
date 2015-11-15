Reps::Application.routes.draw do

  root to: "properties#index"
  resources :properties

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
