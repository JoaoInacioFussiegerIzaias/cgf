Rails.application.routes.draw do
  get "/produtos", to: "produtos#produtos"
  get "/preço", to: "produtos#preço"
  post "/produtos", to: "produtos#create"
  get "/produtos/:id", to: "produtos#show"
  get "/maquinas", to: "produtos#maquinas"
  get "/cadastro", to: "produtos#cadastro"
end
