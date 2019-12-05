class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :product_id
      t.timestamps
    end
    add_index :purchases, [:user_id, :product_id]
    add_index :purchases, :product_id
  end
end
