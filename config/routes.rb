Reps::Application.routes.draw do

  root to: "properties#index"

  resources :properties

end
