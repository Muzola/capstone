class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.purchases.create(product: current_product)
     
       # Amount in cents
    @amount = (current_product.cost * 100).to_i

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken],
      address: params[current_user.address]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Cybin Caps',
      currency: 'usd'
    )
    
    redirect_to product_path(current_product)
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end

  private

  def current_product
    @current_product ||= Product.find(params[:product_id])
  end
end
