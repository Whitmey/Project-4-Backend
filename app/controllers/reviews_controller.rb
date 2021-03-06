class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /reviews
  def index
    @reviews = Review.where review_params

    render json: @reviews
  end

  # GET /reviews/1
  def show
    render json: @review
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.user == current_user

      if @review.update(review_params)
        render json: @review
      else
        render json: @review.errors, status: :unprocessable_entity
      end
    else
      render json: { errors: ["Unauthorized"] },
      status: 401
    end
  end

  # DELETE /reviews/1
  def destroy
    if @review.user == current_user
      @review.destroy
    else
      render json: { errors: ["Unauthorized"] },
      status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.permit(:user_id, :review_id, :rating, :body, :profile_id)
    end
end
