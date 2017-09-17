class AddUserIdAndProductsAndStateToCart < ActiveRecord::Migration
  def change
    add_column :carts, :user_id, :integer
    add_column :carts, :products, :text
    add_column :carts, :state, :integer
  end
end
