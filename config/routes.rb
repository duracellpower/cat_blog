Rails.application.routes.draw do
  get 'lions/name:strong'

  get 'lions/pre_name:string'

  get 'lions/birthdate:date'

  get 'lions/info:string'

  get 'elefants/name'

  get 'elefants/prename'

  get 'elefants/birthdate'

  get 'elefants/date'

  get 'elefants/info'

  get 'elefants/string'

  #root 'application#bye'

  #root 'greetings#index'

  root 'cats#index'

  resources :cats
  resources :dogs
  resources :horses

end
