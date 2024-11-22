class OffersController < ApplicationController
  def index
    @offers = Offer.all
    @offers = Offer.search_by_title_and_description_and_address(params[:query]) if params[:query]
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
      if @offer.save!
        redirect_to root_path(@offer)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    @markers = [{ lat: @offer.latitude, lng: @offer.longitude }]
  end

  def dashboard
    @user = current_user
    @offers = Offer.where(user_id: current_user.id)
    @bookings = Booking.where(user_id: current_user.id)
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :address, photos: [])
  end
end
