Rails.application.routes.draw do

  get "", to: "main#index"

  get  "about", to: "about#index"

  get "sign_up", to: "registrations#new"

  post "sign_up", to: "registrations#create"

end
