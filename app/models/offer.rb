class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_address,
    against: [ :title, :description, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
