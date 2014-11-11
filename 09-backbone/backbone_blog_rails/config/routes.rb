Rails.application.routes.draw do
  resources :posts
root :to => 'posts#home'
resources :posts
end
