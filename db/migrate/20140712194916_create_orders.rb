class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.string :full_name
      t.string :email
      t.string :creditcard
      t.date :expiration_date

      t.timestamps
    end
  end
end
