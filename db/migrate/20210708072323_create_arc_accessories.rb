class CreateArcAccessories < ActiveRecord::Migration[6.1]
  def change
    create_table :arc_accessories do |t|
      t.string :accessory_name
      t.string :mark
      t.string :matter

      t.timestamps
    end
  end
end
