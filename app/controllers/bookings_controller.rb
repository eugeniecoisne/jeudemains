class BookingsController < ApplicationController
  def create
    @date = Booking.find(params[:date])
    @workshop = Workshop.find(params[:workshop_id])
    @profile = current_user.profile
    params[:nb_part].times do
      @booking = Booking.new
      authorize @booking
      @booking = @date.date
      @booking.workshop = @workshop
      @booking.profile = @profile
      @booking.save
    end
    redirect_to profile_path(@profile)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to profile_path(@booking.profile)
  end
end
