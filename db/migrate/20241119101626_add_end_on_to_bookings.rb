class AddEndOnToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :end_on, :date
  end
end
