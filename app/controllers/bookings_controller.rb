# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :authenticate_user! # Si vous utilisez Devise ou autre pour authentifier l'utilisateur
  before_action :set_offer, only: [:new, :create]

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = current_user
    @booking.offer = @offer
    if @booking.save!
      redirect_to offer_path(@offer), notice: "Réservation réussie !"
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    redirect_to users_dashboard_path, notice: "Réservation supprimée !" if @booking.destroy
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:occurs_on, :end_on)
  end
end
