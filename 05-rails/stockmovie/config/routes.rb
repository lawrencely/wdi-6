Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'

  get '/stock' => 'stocks#index'
  get '/stock/lookup' => 'stocks#lookup'

  get '/movies' => 'movies#index'
  get '/movies/lookup' => 'movies#lookup'
end
