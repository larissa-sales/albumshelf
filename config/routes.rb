Rails.application.routes.draw do
  get 'welcome/index'
  get 'books/mybooks'
  get 'albums/myalbums'
  resources :books
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
