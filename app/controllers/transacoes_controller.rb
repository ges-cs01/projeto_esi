# Transações controller
class TransacoesController < ApplicationController
  def new
    @transacao = Transacao.new
  end

  def create
    @transacao = Transacao.new(transacao_params)
    if @transacao.save
      redirect_to '/transacoes/list'
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def show
  end

  private

  def transacao_params
    defaults = { userId: session[:user_id] }
    params.require(:transacao).permit(:valor, :descricao).reverse_merge(defaults)
  end
end
