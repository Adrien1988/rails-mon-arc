class AddBowReferenceToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :bow, foreign_key: true
  end
end
