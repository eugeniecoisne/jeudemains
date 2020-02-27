class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @profiles = Profile.where(animator: true)
    @places = Place.joins(:profile).where("profiles.organizer=true")
  end

  def search
    @profile = params[:profile]
    @place = params[:place]

    if @profile.present? && @place.present?
      redirect_to profile_public_path(@profile)
    elsif @profile.present? && !@place.present?
      redirect_to profile_public_path(@profile)
    elsif @place.present? && !@profile.present?
      redirect_to place_path(@place)
    else
      redirect_to workshops_path
    end
  end
end
