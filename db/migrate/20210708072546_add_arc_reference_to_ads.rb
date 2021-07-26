class AddArcReferenceToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :arc, foreign_key: true
  end
end
