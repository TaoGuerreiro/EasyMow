class Tractor < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
