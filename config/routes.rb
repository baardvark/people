Rails.application.routes.draw do

  root 'static_people#home'

  get '/about', to: 'static_people#about'
  resources :people
end
