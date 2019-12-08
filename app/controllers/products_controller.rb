class ProductsController < ApplicationController
  before_action :authenticate_user!
  

  def new
    @product = Product.new
  end

  def create
    @product = current_user.products.create(product_params)
    if @product.valid?
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
  end
end

  def show
    @product = Product.find(params[:id])
  end

  private 

  def product_params
    params.require(:product).permit(:title, :description, :cost, :image, :stock, :shipping)
  end
end
