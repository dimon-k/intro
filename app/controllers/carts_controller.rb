class CartsController < ApplicationController
  def create
    cart = current_user.carts.where(state: 'created').first_or_create
    line_item = cart.line_items.where(product_id: params[:product]).first_or_create
    line_item.quantity += 1
    line_item.save
    redirect_to products_path
  end

  def update
    cart = current_user.carts.find(params[:id])
    cart.update(state: 'completed')
    redirect_to products_path
  end
end
