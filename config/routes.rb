Rails.application.routes.draw do
  get 'users/:id' => 'users#show'
  get 'users' => 'users#index'
  post 'users' => 'users#create'
  patch 'users/:id' => 'users#update'
  put 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
end
