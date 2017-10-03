class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :cart_id
      t.integer :quantity, default: 0, null: false

      t.timestamps null: false
    end
  end
end
