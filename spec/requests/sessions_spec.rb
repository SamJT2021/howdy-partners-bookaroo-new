require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /log-in" do
    it "returns http success" do
      get "/log-in"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /log-out" do
    it "returns http redirect" do
      get "/log-out"
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET /welcome" do
    it "returns http success" do
      get "/welcome"
      expect(response).to have_http_status(:success)
    end
  end

end
