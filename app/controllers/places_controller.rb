class PlacesController < ApplicationController
  before_action :set_place, only: [:edit, :update, :destroy]

  def edit
    authorize @place
  end

  def update
    authorize @place
    @place.update(place_params)
    if @place.save
      redirect_to profile_path(@place.profile)
    else
      render :edit
    end
  end

  def create
    @place = Place.new(place_params)
    authorize @place
    @profile = Profile.find(params[:profile_id])
    @place.profile = @profile
    if @place.save
      redirect_to profile_path(@profile)
    else
      render 'profiles/show'
    end
  end

  def destroy
    authorize @place
    @place.destroy
    redirect_to profile_path(@place.profile)
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address, :zip_code, :city, :phone_number)
  end
end
