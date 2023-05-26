Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/pets", to: "pets#index"
  # get "/show/:id", to: "pet#show"
  resources :pets # only: [:index, :show, :new, :create, :edit, :update, :destroy] not needed once all three are implemented
end

# new and create always come together -> get + post
# create: post request -> backend
# new: get request -> form
# edit and update always alwas come together
# edit: get request -> form
# update: patch request -> backend

# resources :controller, only: [:action]
# convention [:index, :show, :new, :create, :edit, :update, :destroy]
# no need for only if all 7 are already defined
