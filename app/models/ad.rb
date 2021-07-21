class Ad < ApplicationRecord
  belongs_to :user
  belongs_to :bow
  belongs_to :arrows
  belongs_to :bow_accessory
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
