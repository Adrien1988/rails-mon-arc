class AddArcAccessoryReferenceToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :arc_accessory, foreign_key: true
  end
end
