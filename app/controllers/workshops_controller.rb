class WorkshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]

  def index
    if params[:filter].present?
      keyword = params[:filter][:keyword]
      place = params[:filter][:place]
      date = params[:filter][:date]
      price = params[:filter][:price].to_i
      rating = params[:filter][:rating].to_i
      @workshops = policy_scope(Workshop)
      @workshops = @workshops.search_by_keyword(keyword) if keyword.present?
      @workshops = @workshops.search_by_place(place) if place.present?
      @workshops = @workshops.search_by_date(date) if date.present?
      @workshops = @workshops.sort_by { |workshop| workshop.price } if price == 1
      @workshops = @workshops.sort_by { |workshop| workshop.average_rating }.reverse if rating == 1
    else
      @workshops = policy_scope(Workshop).order(:name).reverse_order
    end

    # @places_geo = Place.all.map { |place| place if place.workshops.count > 0 }
    @places_geo = Place.where(id: @workshops.pluck(:place_id))

    @markers = @places_geo.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place })
      }
    end
  end

  def show
    authorize @workshop
    @booking = Booking.new
  end

  def new
    @workshop = Workshop.new
    authorize @workshop
    @animators = Profile.where(animator: true)
    @places = current_user.profile.places
  end

  def create
    @workshop = Workshop.new(workshop_params)
    authorize @workshop
    @place = Place.find(params[:workshop][:place_id])
    @animator = Profile.find(params[:workshop][:profile_id])
    @workshop.place = @place
    @workshop.profile = @animator
    if @workshop.save
      redirect_to profile_path(@place.profile)
    else
      render :new
    end
  end

  def edit
    authorize @workshop
    @animators = Profile.where(animator: true)
    @places = current_user.profile.places
  end

  def update
    authorize @workshop
    @workshop.update(workshop_params)
    if @workshop.place.id != params[:workshop][:place_id]
      @place = Place.find(params[:workshop][:place_id])
      @workshop.place = @place
    end
    if @workshop.profile.id != params[:workshop][:profile_id]
      @animator = Profile.find(params[:workshop][:profile_id])
      @workshop.profile = @animator
    end
    if @workshop.save
      redirect_to workshop_path(@workshop)
    else
      render :edit
    end
  end

  def destroy
    authorize @workshop
    @workshop.destroy
    redirect_to profile_path(@workshop.place.profile)
  end

  private

  def set_workshop
    @workshop = Workshop.find(params[:id])
  end

  def workshop_params
    params.require(:workshop).permit(:name, :description, :thematic, :subtheme, :level, :price, :duration, :participants, :status, photos: [])
  end
end
