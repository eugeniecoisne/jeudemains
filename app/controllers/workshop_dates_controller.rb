class WorkshopDatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search_places]

  def new
   @workshop_date = WorkshopDate.new
   authorize @workshop_date
   @workshop = Workshop.find(params[:workshop_id])
  end

  def create
    @workshop_date = WorkshopDate.new(workshop_date_params)
    authorize @workshop_date
    @workshop = Workshop.find(params[:workshop_id])
    @workshop_date.workshop = @workshop
    if @workshop_date.save
      redirect_to profile_path(@workshop.place.profile)
    else
      render :new
    end
  end

  def destroy
    @workshop_date = WorkshopDate.find(params[:id])
    @workshop_date.destroy
    redirect_to profile_path(@workshop_date.workshop.place.profile)
  end

  def search_places
     @workshop_date = WorkshopDate.find(params[:workshop_date_id])
     authorize @workshop_date
     @number = @workshop_date.available
     render json: @number
  end

  private

  def workshop_date_params
    params.require(:workshop_date).permit(:date)
  end
end
