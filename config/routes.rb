Rails.application.routes.draw do
  get "/produtos", to: "produtos#index"
  get "/produtos/new", to: "produtos#new"
  post "/produtos", to: "produtos#create"
  get "/produtos/:id", to: "produtos#show"
  get "/maquinas", to: "produtos#maquinas"
  get "/cadastro", to: "produtos#cadastro"
end
