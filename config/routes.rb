Rails.application.routes.draw do
  resources :books
  get 'top' => 'books#top'
  post 'books' => 'books#create'
  get 'books' =>'books#new'
  get 'books'/:id => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_books'
  delete 'books/:id' => 'books#destroy', as: 'destroy_books'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
