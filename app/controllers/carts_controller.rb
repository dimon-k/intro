class CartsController < ApplicationController

  def create
    last_cart = Cart.where(user_id: current_user).last
    if last_cart
      last_cart.state == 'created' ? (cart = last_cart) : (cart = current_user.carts.new)
    else
      cart = current_user.carts.new
    end
    cart.product_id = params[:product]
    cart.save
    redirect_to products_path
  end

  def update
    cart = Cart.find(params[:id])
    cart.state = 'completed'
    cart.save
    redirect_to products_path
  end
end
