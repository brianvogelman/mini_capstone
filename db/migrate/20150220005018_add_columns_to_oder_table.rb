class AddColumnsToOderTable < ActiveRecord::Migration	

  def change
  	rename_column :orders, :product_option, :product_option_id
  end
end
