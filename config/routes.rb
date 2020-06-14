Rails.application.routes.draw do
  get 'home/index'
  get 'home/help'
  root 'home#index'
  resources :usuarios
  resources :emprestimo_livros
  resources :periodicos
  resources :livros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
