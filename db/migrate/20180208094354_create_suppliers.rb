class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
