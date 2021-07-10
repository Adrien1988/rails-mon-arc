class CreateBows < ActiveRecord::Migration[6.1]
  def change
    create_table :bows do |t|
      t.string :mark
      t.integer :power
      t.integer :waist
      t.string :matter

      t.timestamps
    end
  end
end
