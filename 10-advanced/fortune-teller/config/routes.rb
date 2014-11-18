Rails.application.routes.draw do
  get 'lottery/numbers'
  root :to => 'pages#index'
end
