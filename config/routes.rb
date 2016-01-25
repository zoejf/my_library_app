Rails.application.routes.draw do

 root 'pages#index'

 #authors
 resources :authors

 #books
 resources :books, only: [:index, :create, :show, :destroy]
 get '/authors/:id/books', to: 'books#new', as: 'new_book'

 #users
 get '/signup', to: 'users#new', as: 'signup'
 resources :users, only: [:create]

 #sessions
 get '/login', to: 'sessions#new', as: 'login'
 post '/login', to: 'sessions#create'
 get '/logout', to: 'sessions#destroy'

end


#      Prefix Verb   URI Pattern                  Controller#Action
#        root GET    /                            pages#index
#     authors GET    /authors(.:format)           authors#index
#             POST   /authors(.:format)           authors#create
#  new_author GET    /authors/new(.:format)       authors#new
# edit_author GET    /authors/:id/edit(.:format)  authors#edit
#      author GET    /authors/:id(.:format)       authors#show
#             PATCH  /authors/:id(.:format)       authors#update
#             PUT    /authors/:id(.:format)       authors#update
#             DELETE /authors/:id(.:format)       authors#destroy
#       books GET    /books(.:format)             books#index
#             POST   /books(.:format)             books#create
#        book GET    /books/:id(.:format)         books#show
#             DELETE /books/:id(.:format)         books#destroy
#    new_book GET    /authors/:id/books(.:format) books#new
#      signup GET    /signup(.:format)            users#new
#       users POST   /users(.:format)             users#create
#       login GET    /login(.:format)             sessions#new
#             POST   /login(.:format)             sessions#create
#      logout GET    /logout(.:format)            sessions#destroy

