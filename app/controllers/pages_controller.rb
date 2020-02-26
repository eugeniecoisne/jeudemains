class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @profiles = Profile.where(animator: true)
    @places = Place.joins(:profile).where("profiles.organizer=true")
  end

  def search
    raise
  end
end
