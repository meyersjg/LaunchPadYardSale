class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @order.product_id = params[:product_id]
    @order.full_name = params[:full_name]
    @order.email = params[:email]
    @order.creditcard = params[:creditcard]
    @order.expiration_date = params[:expiration_date]
    @order.save

    redirect_to root_url, notice: "Order submitted successfully!"
  end

end
