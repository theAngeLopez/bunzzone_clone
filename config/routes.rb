Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'listings#index'
  get 'listings' => 'listings#index'

  get 'listings/new' => 'listings#new'
  post 'listings' => 'listings#create'

  get 'listings/:id' => 'listings#show', as: 'listing'

  get 'listings/:id/edit' => "listings#edit", as: "edit_listing"
  patch 'listings/:id' => "listings#update"

end
