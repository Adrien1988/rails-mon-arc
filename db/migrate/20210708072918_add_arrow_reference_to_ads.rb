class AddArrowReferenceToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :arrow, foreign_key: true
  end
end
