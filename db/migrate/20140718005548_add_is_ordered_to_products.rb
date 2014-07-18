class AddIsOrderedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :is_ordered, :boolean, :default => false
  end
end
