class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    cart = Cart.where(user_id: current_user.id).last
    if cart
      @cart = cart if cart.state == 'created'
    end
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    @product.save ? (redirect_to products_path) : (render 'new')
  end

  def update
    @product.update(product_params) ? (redirect_to products_path) : (render 'edit')
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :image_url)
  end
end
