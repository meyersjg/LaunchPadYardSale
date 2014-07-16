class ProductsController < ApplicationController

  def index
    @products = Product.all

    # render "partials/_new_order_form.html.erb"
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


end
