require 'rails_helper'

RSpec.describe Product do
    describe "products model" do
    it "should create a new product" do
      product = Product.create(:title => "Fix things")
      
      expect(product.title).to eq("Fix things")
    end
  end

  # describe "products#show" do
  #   it "should allow tasks to be marked as done" do
  #     task = FactoryBot.create(:task, done: false)
  #     put :update, params: {id: task.id, task: { done: true }}
  #     expect(response).to have_http_status(:success)
  #     task.reload
  #     expect(task.done).to eq(true)
  #   end
  # end

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