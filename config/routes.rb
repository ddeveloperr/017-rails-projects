Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Add routes for the new resources
  jsonapi_resources :contacts
  jsonapi_resources :phone_numbers

end
