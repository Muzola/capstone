class AddShippingToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :shipping, :decimal
  end
end
