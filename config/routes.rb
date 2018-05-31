Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :scrappers
  jsonapi_resources :scrapped_contents
end
