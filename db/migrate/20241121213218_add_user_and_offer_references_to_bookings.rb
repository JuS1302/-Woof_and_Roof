class AddUserAndOfferReferencesToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :user, null: false, foreign_key: true
    add_reference :bookings, :offer, null: false, foreign_key: true
  end
end
