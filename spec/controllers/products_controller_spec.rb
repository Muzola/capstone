require 'rails_helper'

RSpec.describe ProductsController do

    describe "products#create action" do
    it "should create a new product" do
      user = FactoryBot.create(:user)
      sign_in user
      product = Product.create(:title => "New keycap")
      expect(product.title).to eq("New keycap")
    end
  end

  describe "products#show" do
    it "should show the new item on its own page" do
      user = FactoryBot.create(:user)
      sign_in user
      product = FactoryBot.create(:product)
      get :show, params: { id: product.id }
      expect(response).to have_http_status(:success)
    end
  end

  # describe "tasks#create" do
  #   it "should allow new tasks to be created" do
  #     post :create, params: {task: {title: "Fix things"}}
  #     expect(response).to have_http_status(:success)
  #     response_value = ActiveSupport::JSON.decode(@response.body)
  #     expect(response_value['title']).to eq("Fix things")
  #     expect(Task.last.title).to eq("Fix things")
  #   end
  # end
end