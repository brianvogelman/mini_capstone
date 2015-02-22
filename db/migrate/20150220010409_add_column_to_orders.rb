class AddColumnToOrders < ActiveRecord::Migration
  def change
  		add_column :orders, :subtotal, :integer
  		add_column :orders, :tax, :integer
  		add_column :orders, :total, :integer
  end
end
