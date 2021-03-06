Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  get '/product_data' => 'products#product'
  #get '/products' => 'products#all_the_products'
  get '/add_product' => 'products#add_product'
  post '/submit_product' => 'products#submit_product'

  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  post '/orders' => 'orders#create'

end
