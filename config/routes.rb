Rails.application.routes.draw do
  resources :events
  resources :travels
  resources :physical_goods
  resources :sponsorships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
