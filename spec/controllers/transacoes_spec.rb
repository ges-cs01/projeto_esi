require 'rails_helper'

RSpec.describe TransacoesController, type: :controller do
  let(:session) { {id: 1} }

  describe "create" do
    it "creates a transaction and redirect to '/transacoes/list'" do
      post :create, params: {
        transacao: {
          descricao: "Salário",
          valor: -100
        }
      }
      assert_redirected_to "/transacoes/list"
    end

    it "return unprocessable_entity if transaction is invalid" do
      post :create, params: {transacao: {descricao: "Salário"}}
      assert_response(:unprocessable_entity)
    end
  end
end
