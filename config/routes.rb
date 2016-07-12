Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'listings' => 'listings#index'
  get 'listings/:id' => 'listings#show', as: 'listing'

end
