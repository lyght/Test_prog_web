Rails.application.routes.draw do
  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/create'

  get 'posts/update'

  get 'posts/destroy'
resources :posts
  get '/home', to: 'pages#home'

  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
