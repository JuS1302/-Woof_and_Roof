class AddOccursOnToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :occurs_on, :date
  end
end
