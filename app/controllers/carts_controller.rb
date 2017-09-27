class CartsController < ApplicationController

  def create
    current_user.carts.where(state: 'created').first_or_create.update(product_id: params[:product])
    redirect_to products_path
  end

  def update
    cart = current_user.carts.find(params[:id])
    cart.update(state: 'completed')
    redirect_to products_path
  end
end
