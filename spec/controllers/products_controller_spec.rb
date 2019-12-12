require 'rails_helper'

RSpec.describe ProductsController do

  describe "products#create action" do
    it "should create a new product in the database" do
      user = FactoryBot.create(:user)
      sign_in user
      product = Product.create(:title => "New keycap")
      expect(product.title).to eq("New keycap")
    end
  end

  describe "products#new action" do
    it "should redirect after the user new product is made" do
     get :new
      expect(response).to redirect_to new_user_session_path 
    end
  end


  describe "products#show" do
    it "should show the new product on its own page" do
      user = FactoryBot.create(:user)
      sign_in user
      product = FactoryBot.create(:product)
      get :show, params: { id: product.id }
      expect(response).to have_http_status(:success)
    end
  end

end