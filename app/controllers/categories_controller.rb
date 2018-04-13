class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(params[:category_id])
    @products = Category.filter_by_category(params[:products_id])
  end
end
