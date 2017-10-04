class LineItemsController < ApplicationController
  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to products_path
  end
end
