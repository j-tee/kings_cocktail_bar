class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :unit_price
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
