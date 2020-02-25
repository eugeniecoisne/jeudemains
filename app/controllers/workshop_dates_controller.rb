class WorkshopDatesController < ApplicationController
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

  private

  def workshop_date_params
    params.require(:workshop_date).permit(:date)
  end
end
