# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#     banks GET    /banks(.:format)          banks#index
#           POST   /banks(.:format)          banks#create
#  new_bank GET    /banks/new(.:format)      banks#new
# edit_bank GET    /banks/:id/edit(.:format) banks#edit
#      bank GET    /banks/:id(.:format)      banks#show
#           PATCH  /banks/:id(.:format)      banks#update
#           PUT    /banks/:id(.:format)      banks#update
#           DELETE /banks/:id(.:format)      banks#destroy
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#      root GET    /                         sessions#new
#     login GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create
#           DELETE /login(.:format)          sessions#destroy
#

Rails.application.routes.draw do
  resources :banks
  resources :users

  root to: 'banks#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end
