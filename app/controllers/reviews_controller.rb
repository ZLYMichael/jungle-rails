class ReviewsController < ApplicationController
  before_filter :authorize
  def create
    @product = Product.find(params[:product_id])
    @new_review = @product.reviews.new(review_params)
    @new_review.user = current_user
    
    if @new_review.save
      flash[:success] = 'Thanks for your review!'
      redirect_to(:back)
    else
      flash[:error] = "Error, review was not created"
      redirect_to(:back)
    end
  end


  def review_params
    params.require(:review).permit(:description, :rating)
  end
end


