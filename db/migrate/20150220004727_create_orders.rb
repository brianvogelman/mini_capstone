class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :quantity
      t.string :product_option

      t.timestamps null: false
    end
  end
end
