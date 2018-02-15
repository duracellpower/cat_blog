Rails.application.routes.draw do

  #root 'application#bye'

  #root 'greetings#index'

  root 'animals#index'

  resources :animals
  resources :cats

end
