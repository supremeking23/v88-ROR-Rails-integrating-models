Rails.application.routes.draw do
  get  'users/index'
  get  'users' => 'users#index'
  # get 'users/edit'
  get 'users/new'
  get 'users/total' => "users#total"
  get 'users/edit/:id' => "users#edit"
  get 'users/:id' => "users#show"

  post 'users-create' => 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # this line will create 7 routes from the example above
  # resources :products

  

  root "users#index"
end
