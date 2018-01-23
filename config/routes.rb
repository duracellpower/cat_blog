Rails.application.routes.draw do
  #root 'application#bye'

  #root 'greetings#index'

  root 'cats#index'

  resources :cats

end
