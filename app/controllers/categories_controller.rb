class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end



end
 #@category looking up the category by id - the id is the URL /categories/3 3 = :id
 # @products - display all products created at in descending order (by category)
 # controller glues things together
 # theses variables are passed to the view