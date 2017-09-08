class ReviewsController < ApplicationController
  before_action :find_hike, :authorize_user
  after_action :update_hike_rating

  def new
    @hike = Hike.find(params[:hike_id])
    @review = Review.new
  end

  def create
    if @hike.reviews.create!(account_id: current_user.account.id, author: current_user.username, content: review_params[:content], rating: review_params[:rating])
      redirect_to hike_path(@hike), notice: 'Your review was successfully added!'
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      redirect_to hike_path(@hike), notice: 'Review successfully edited.'
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to hike_path(@hike), notice: 'Review successfully deleted.'
  end

private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def find_hike
    @hike = Hike.find(params[:hike_id])
  end

  def update_hike_rating
    total_rating = 0
    @hike.reviews.each do |review|
      total_rating += review.rating
    end
    total_reviews = @hike.reviews.length.to_f
    updated_rating = (total_rating/total_reviews).round(1)
    @hike.update!(rating: updated_rating)
  end

end
