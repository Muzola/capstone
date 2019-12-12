require 'rails_helper'

RSpec.describe ProductsController do

  describe "purchases#create action" do
    it "should log a purchase in the database" do
      user = FactoryBot.create(:user)
      sign_in user
     

      post :create, params: {product: {title: 'hello', description: "test", cost: 18, image: "img.jpg", stock: 1, shipping: 9}}
      expect(response).to redirect_to product_path(user.products.last.id)
    end
  end

end
