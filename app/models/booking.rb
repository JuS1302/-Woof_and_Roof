class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  def trip_price
    trip_duration = 0
    trip_price = 0
    trip_duration = end_on - occurs_on
    trip_price = offer.price
    return trip_duration.to_i * trip_price.to_i
  end
end
