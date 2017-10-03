class RemoveProductIdFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :product_id, :string
  end
end
