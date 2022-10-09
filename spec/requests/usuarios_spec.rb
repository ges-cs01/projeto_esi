require 'rails_helper'

RSpec.describe "Usuarios", type: :request do
  describe "GET /usuarios/new" do
    it "returns http success" do
      get "/usuarios/new"
      expect(response).to have_http_status(:success)
    end
  end
end
