class RemoveVendor < ActiveRecord::Migration
  def change
  	remove_column :products, :vendor, :string
  end
end
