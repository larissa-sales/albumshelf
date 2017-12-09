Rails.application.routes.draw do
  get 'welcome/index'
  get 'books/mybooks'
  get 'albums/myalbums'
  get 'albums/:id/booksrelated' => 'albums#booksrelated', as: 'albums_booksrelated'
  get 'albums/:id/addbooks' => 'albums#addbooks', as: 'albums_addbooks'

  resources :albums
  resources :books
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
