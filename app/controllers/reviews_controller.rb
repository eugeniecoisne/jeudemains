class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
    @workshop = Workshop.find(params[:workshop_id])
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @workshop = Workshop.find(params[:workshop_id])
    @profile = current_user.profile
    @review.workshop = @workshop
    @review.profile = @profile
    if @review.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    authorize @review
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    if @review.save
      redirect_to profile_path(current_user.profile)
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :animator_rating, :content)
  end
end
