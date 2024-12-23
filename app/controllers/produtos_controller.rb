class ProdutosController < ApplicationController
  def produtos
    @p = Produto.all
  end

  def preço
  end

  def create
    @p = Produto.new(produto_params) # Inicializa o Produto com os parâmetros recebidos do formulário

    if @p.save
      redirect_to @p, notice: 'Produto criado com sucesso!' # Redireciona para a página de exibição do produto
    else
      render :new # Renderiza novamente o formulário caso a validação falhe
    end
  end

  def show
    @p = Produto.find(params[:id]) # Busca o produto pelo ID fornecido
  end

  private

  # Método privado para permitir apenas os parâmetros permitidos
  def produto_params
    params.require(:produto).permit(:name, :price, :quantity) # Substitua pelos atributos reais do seu modelo Produto
  end
end

class ProdutosController < ApplicationController
  def maquinas
    # Supondo que você tenha um campo "categoria" no modelo Produto
    @p = Produto.where(categoria: "Máquinas")
    end
  def cadastro

  end
end
