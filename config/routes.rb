Rails.application.routes.draw do
  root to: 'pages#home'
  get 'download_pdf', to: "pages#download_pdf"
  get "/about", to: "pages#about"
  get '/contact', to: "contacts#new", as: 'contact'
  resources :contacts, only:  [:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects
end
