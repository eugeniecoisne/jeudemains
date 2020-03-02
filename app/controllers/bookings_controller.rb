class BookingsController < ApplicationController
  def create
    date = WorkshopDate.find(params[:date])
    workshop = Workshop.find(params[:workshop_id])
    profile = current_user.profile
    participants = params[:nb_part].to_i
    booking = Booking.create!(
      date: date.date,
      quantity: participants,
      amount_cents: workshop.price_cents * participants,
      status: 'pending',
      workshop: workshop,
      profile: profile)
    authorize booking

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: booking.workshop.name,
        amount: booking.amount_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: profile_url(booking.profile),
      cancel_url: profile_url(booking.profile)
    )

    booking.update(checkout_session_id: session.id)
    redirect_to new_booking_payment_path(booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to profile_path(@booking.profile)
  end
end
