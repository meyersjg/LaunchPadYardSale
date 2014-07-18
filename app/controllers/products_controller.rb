class ProductsController < ApplicationController

  def index
    @products = Product.all

  end

  def new
  end

  def create
    @product = Product.new
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.save

    redirect_to orders_url
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    redirect_to root_url, notice: "Order placed!"
  end


end
