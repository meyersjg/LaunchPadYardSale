class ProductsController < ApplicationController

  def index
    @products = Product.all
    @order = Order.new

    # render "partials/_new_order_form.html.erb"
  end

end
