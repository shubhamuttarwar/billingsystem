class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :product_name
      t.integer :unit_price
      t.integer :sku

      t.timestamps
    end
  end
end
