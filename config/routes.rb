# config/routes.rb
#Add these routes below to your routes.rb file. Notice I also deleted all the comments inside that file. Don't forget to leave the trailing end, though.
Rails.application.routes.draw do 

   root to: 'products#index'
   get 'about/', to: 'about#index'
    
    # These routes are for showing users a login form, logging them in, and logging them out.
   get '/login',  to: 'sessions#new'
   post '/login', to: 'sessions#create'
   get '/logout', to: 'sessions#destroy'

    # These routes will be for signup. The first renders a form in the browse, the second will 
    # receive the form and create a user in our database using the data given to us by the user.
   get '/signup', to: 'users#new'
   post '/users', to: 'users#create'

   resources :products, only: [:index, :show]
   resources :categories, only: [:show]
   resource :cart, only: [:show] do
     post   :add_item
     post   :remove_item
   end
   
   resources :orders, only: [:create, :show]
   namespace :admin do
     root to: 'dashboard#show'
     resources :products, except: [:edit, :update, :show]
     resources :categories, except: [:edit, :update, :show, :destroy]
   end
 
 end