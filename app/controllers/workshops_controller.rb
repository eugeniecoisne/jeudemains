class WorkshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]

  def index
    @workshops = policy_scope(Workshop)

    @places_geo = Place.all.map { |place| place if place.workshops.count > 0 }
    @markers = @places_geo.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { workshop.place: workshop.place })
      }
    end
  end

  def show
    authorize @workshop
  end

  def new
    @workshop = Workshop.new
    authorize @workshop
  end

  def create
  end

  def edit
    authorize @workshop
  end

  def update
    authorize @workshop
    @workshop.update(workshop_params)
    if @workshop.save
      redirect_to workshop_path(@workshop)
    else
      render :edit
    end
  end

  def destroy
    authorize @workshop
    @workshop.destroy
    redirect_to workshops_path
  end

  private

  def set_workshop
    @workshop = Workshop.find(params[:id])
  end

  def workshop_params
    params.require(:workshop).permit(:name, :description, :thematic, :subtheme, :level, :price, :duration, :participants, :status)
  end
end
