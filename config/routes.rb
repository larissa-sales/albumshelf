Rails.application.routes.draw do
  get 'welcome/index'
  get 'books/mybooks'
  get 'albums/myalbums'
  get 'albums/:id/booksrelated' => 'albums#booksrelated', as: 'albums_booksrelated'
  get 'albums/:id/addbooks' => 'albums#addbooks', as: 'albums_addbooks'
  get 'albums/:id/addbooktoalbum' => 'albums#addbooktoalbum', as: 'albums_addbooks_toalbum'
  get 'albums/:id/deletebook' => 'albums#deletebook', as: 'albums_deletebook'

  get 'books/:id/albumsrelated' => 'books#albumsrelated', as: 'books_albumsrelated'
  get 'books/:id/addalbums' => 'books#addalbums', as: 'books_addalbums'
  get 'books/:id/addalbumtobook' => 'books#addalbumtobook', as: 'books_addalbums_tobook'
  get 'books/:id/deletealbum' => 'books#deletealbum', as: 'books_deletealbum'
  get 'show_user/turnintoadmin' => 'show_user#turnintoadmin', as: 'turn_into_admin'

  resources :show_user
  resources :albums
  resources :books
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
