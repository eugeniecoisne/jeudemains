class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def show
    authorize @profile
    @place = Place.new
  end

  def public
    @profile = Profile.find(params[:profile_id])
    authorize @profile
  end

  def edit
    authorize @profile
  end

  def update
    authorize @profile
    @profile.update(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:last_name, :first_name, :company, :address, :zip_code, :city, :phone_number, :site_web, :facebook, :instagram, :photo)
  end
end
