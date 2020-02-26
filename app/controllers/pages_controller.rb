class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @profiles = Profile.where('organizer=true OR animator=true')
  end

  def search

  end
end
