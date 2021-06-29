class CreateAds < ActiveRecord::Migration[6.1]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :equipment
      t.integer :price
      t.string :state
      t.text :description
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
