class ChangeNameLocationToAds < ActiveRecord::Migration[6.1]
  def change
    rename_column :ads, :location, :address
  end
end
