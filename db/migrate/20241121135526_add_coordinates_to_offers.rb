class AddCoordinatesToOffers < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:offers, :latitude)
      add_column :offers, :latitude, :float
    end

    unless column_exists?(:offers, :longitude)
      add_column :offers, :longitude, :float
    end
  end
end

