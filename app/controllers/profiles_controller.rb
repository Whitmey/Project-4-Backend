class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /profiles
  def index
    @profiles = Profile.all

    # render json: @profiles

    render :json => @profiles.as_json(:except => [user: :profiles])
  end

  # GET /profiles/1
  def show
    render json: @profile
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  def update
    if @profile.user == current_user

      if @profile.update(profile_params)
        render json: @profile
      else
        render json: @profile.errors, status: :unprocessable_entity
      end
    else
      render json: { errors: ["Unauthorized"] },
      status: 401
    end
  end

  # DELETE /profiles/1
  def destroy
    if @profile.user == current_user
      @profile.destroy
    else
      render json: { errors: ["Unauthorized"] },
      status: 401
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def profile_params
    params.require(:profile).permit(:rank, :fee, :contact, :game_id, :user_id)
  end
end
