class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|

      t.integer :order_id
      t.integer :product_id
      t.integer :qty
      t.integer :amount

      t.timestamps
    end
  end
end
