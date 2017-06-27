Rails.application.routes.draw do
  root 'kittens#index'
  get '/home' => 'static_pages#home'
  resources :kittens
end
