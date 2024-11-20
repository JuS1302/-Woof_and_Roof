class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
      if @offer.save
        redirect_to root_path(@offer)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def show
  @offer = Offer.find(params[:id])
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :address, :photos)
  end

end
