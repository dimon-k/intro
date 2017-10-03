class LineItemsController < ApplicationController
  before_action :find_line_item, only: :destroy

  def destroy
    @line_item.destroy
    redirect_to products_path
  end

  private

  def find_line_item
    @line_item = LineItem.find(params[:id])
  end
end
