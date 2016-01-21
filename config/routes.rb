Rails.application.routes.draw do
 
 root 'authors#index'

 resources :books, only: [:index, :new, :create]
 resources :authors

 resources :users, only: [:new, :create]
end


#   Prefix Verb   URI Pattern                 Controller#Action
#        root GET    /                           authors#index
#       books GET    /books(.:format)            books#index
#             POST   /books(.:format)            books#create
#    new_book GET    /books/new(.:format)        books#new
#     authors GET    /authors(.:format)          authors#index
#             POST   /authors(.:format)          authors#create
#  new_author GET    /authors/new(.:format)      authors#new
# edit_author GET    /authors/:id/edit(.:format) authors#edit
#      author GET    /authors/:id(.:format)      authors#show
#             PATCH  /authors/:id(.:format)      authors#update
#             PUT    /authors/:id(.:format)      authors#update
#             DELETE /authors/:id(.:format)      authors#destroy
#       users POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new