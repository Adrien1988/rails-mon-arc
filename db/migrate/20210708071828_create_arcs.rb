class CreateArcs < ActiveRecord::Migration[6.1]
  def change
    create_table :arcs do |t|
      t.string :mark
      t.integer :power
      t.integer :waist
      t.string :matter

      t.timestamps
    end
  end
end
