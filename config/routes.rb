Rails.application.routes.draw do

  #root 'application#bye'

  #root 'greetings#index'

  root 'cats#index'

  resources :cats
  resources :dogs
  resources :horses
  resources :lions
  resources :elefants
  resources :snakes
  resources :birds


end
