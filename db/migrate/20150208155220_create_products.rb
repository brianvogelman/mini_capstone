class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price#, scale: 7, precision: 2
      t.string :image
      t.text :description
      t.string :category
      t.string :brand

      t.timestamps null: false
    end
  end
end
