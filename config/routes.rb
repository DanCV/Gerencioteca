Rails.application.routes.draw do
  resources :usuarios
  resources :emprestimo_livros
  resources :periodicos
  resources :livros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
