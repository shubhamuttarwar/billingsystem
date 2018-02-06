class AddCategoryToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :product_category, :string
  	add_reference :products, :category, foreign_key: true
  end
end
