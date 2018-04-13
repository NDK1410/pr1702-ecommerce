class ProductsController < ApplicationController
  def index
    @category = Category.all
    @products = Product.filter_by_category(params[:category_id]).filter_by_name(params[:search])
  end

  def show; end
end
