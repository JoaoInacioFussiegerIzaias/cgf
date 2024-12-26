Rails.application.routes.draw do
  get "home/index"
  root 'home#index'  # Define a página inicial como a ação 'index' do controlador 'home'

  get "/produtos", to: "produtos#produtos"
  get "/produtos/new", to: "produtos#new"
  post "produtos", to: "produtos#create"
  get "/produtos/:id", to: "produtos#show"
  get "/maquinas", to: "produtos#maquinas"
  get "/cadastro", to: "produtos#cadastro"
  get "/cadastromaquinas", to: "produtos#cadastromaquinas"
  get "/preço", to: "produtos#preço"
end
