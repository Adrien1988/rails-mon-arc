class Ad < ApplicationRecord
  belongs_to :user
  belongs_to :bow
  belongs_to :arrows
  belongs_to :bow_accessory
  has_many_attached :photos
end
