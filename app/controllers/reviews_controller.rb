class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @user_nanny = User.find(params[:nanny_id])
    @review.nanny = @user_nanny
  end

  def create
    @user_nanny = User.find(params[:nanny_id])
    @review = Review.new(review_params)
    @review.parent = current_user

    if @review.save!
      redirect_to dashboards_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :nanny_id)
  end
end
