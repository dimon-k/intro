class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id,   null: false
      t.integer :cart_id,   null: false
      t.integer :quantity, default: 0, null: false

      t.timestamps null: false
    end
  end
end
