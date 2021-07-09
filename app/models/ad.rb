class Ad < ApplicationRecord
  belongs_to :user
  belongs_to :arc
  belongs_to :arrows
  belongs_to :arc_accessory
end
