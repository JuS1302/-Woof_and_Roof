# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :authenticate_user! # Si vous utilisez Devise ou autre pour authentifier l'utilisateur
  before_action :set_offer, only: [:new, :create]

  def new
    @booking = @offer.bookings.new
  end

  def create
    @booking = @offer.bookings.new(booking_params)
    @booking.user = current_user # L'utilisateur qui fait la réservation (si vous utilisez Devise)

    if @booking.save
      redirect_to @offer, notice: "Réservation réussie !"
    else
      render :new
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:arrival, :departure, :guests)
  end
end
