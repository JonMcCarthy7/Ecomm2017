Rails.application.routes.draw do

  resources :orders
  resources :line_items
  get 'cart/add_to_cart'

  get 'cart/view_order'

  get 'cart/checkout'

  devise_for :users
    get 'categorical' => 'storefront#items_by_category'

    get 'branding' => 'storefront#items_by_brand'

    root 'storefront#all_items'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
