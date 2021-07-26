class RenameArcsToBows < ActiveRecord::Migration[6.1]
  def change
    rename_table :arcs, :bows
  end
end
