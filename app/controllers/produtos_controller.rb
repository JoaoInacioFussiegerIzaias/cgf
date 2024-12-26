class ProdutosController < ApplicationController
  # Método para exibir todos os produtos
  def produtos
    @p = Produto.all
  end

  # Método para exibir o preço (adicione a lógica conforme necessário)
  def preco
    @p = Produto.find(params[:id]) # Exemplo: Buscar o produto específico para exibir o preço
  end

  # Método para exibir formulário de cadastro (se for necessário um formulário de cadastro)
  def cadastro
    @p = Produto.new # Inicializa um novo objeto Produto
  end

  # Método para criar um novo produto
  def create
    @p = Produto.new(produto_params) # Inicializa o Produto com os parâmetros recebidos do formulário

    if @p.save
      redirect_to @p, notice: 'Produto criado com sucesso!' # Redireciona para a página de exibição do produto
    else
      render :cadastro # Renderiza novamente o formulário de cadastro caso a validação falhe
    end
  end

  # Método para exibir um produto específico
  def show
    @p = Produto.find(params[:id]) # Busca o produto pelo ID fornecido
  end

  # Método para filtrar produtos pela categoria "Máquinas"
  def maquinas
    @p = Produto.where(categoria: "Máquinas") # Supondo que você tenha um campo "categoria" no modelo Produto
  end

  private

  # Método privado para permitir apenas os parâmetros permitidos
  def produto_params
    params.require(:produto).permit(:name, :price, :quantity, :categoria) # Permite que o atributo categoria também seja recebido
  end
  def new
  end

end