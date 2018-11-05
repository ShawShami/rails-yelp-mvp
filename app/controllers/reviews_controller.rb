class ReviewsController < ApplicationController
  # def index
  #   @review = Review.all
  # end

  # def show
  #   @review = Review.find(params[:id])
  # end

  def create
    @review = Review.new(params_review)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review)
    else
      render :new
    end
  end

  def new
    @review = Review.new
  end

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end

