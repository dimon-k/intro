class AddUserIdAndProductIdAndStateToCart < ActiveRecord::Migration
  def change
    add_column :carts, :user_id, :integer
    add_column :carts, :product_id, :integer
    add_column :carts, :state, :integer, default: 0
  end
end
