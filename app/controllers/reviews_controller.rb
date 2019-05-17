class ReviewsController < ApplicationController

  def show
    @review = Review.find params[:id]
    # @products = @review.products.order(created_at: :desc)

  end

  def new
    @review = Review.new

  end


  def create
    @review = Review.new(review_params)

    if @review.save
     redirect_to [:product], notice: 'Review created!'
   else
     render :new

   end
  end




  def destroy
  end
end
