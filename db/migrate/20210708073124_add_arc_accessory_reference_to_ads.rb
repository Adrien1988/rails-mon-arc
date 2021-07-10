class AddBowAccessoryReferenceToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :bow_accessory, foreign_key: true
  end
end
