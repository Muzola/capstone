require 'rails_helper'
RSpec.describe ShopController do
    describe "shop#index action" do
    it "should list all products on shop page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end