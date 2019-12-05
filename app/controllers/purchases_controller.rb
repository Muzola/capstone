class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.purchases.create(product: current_product)
    redirect_to product_path(current_product)
  end

  private

  def current_product
    @current_product ||= Product.find(params[:product_id])
  end
end
