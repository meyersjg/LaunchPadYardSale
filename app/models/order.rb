class Order < ActiveRecord::Base
  belongs_to :product

  # after_save :mark_product_as_ordered


  # model stuff
  # private
  # def mark_product_as_ordered
  #   self.product.update_attribute(:is_ordered, true)
  # end
end
