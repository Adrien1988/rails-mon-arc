class CreateArrows < ActiveRecord::Migration[6.1]
  def change
    create_table :arrows do |t|
      t.string :mark
      t.integer :rigidity
      t.integer :length
      t.string :matter

      t.timestamps
    end
  end
end
