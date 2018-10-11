Rails.application.routes.draw do
  root 'tops#home'
  resources :blogs do
    collection do
      post :confirm
    end
  end
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
