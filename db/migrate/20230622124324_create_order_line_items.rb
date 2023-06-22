class CreateOrderLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_line_items do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
