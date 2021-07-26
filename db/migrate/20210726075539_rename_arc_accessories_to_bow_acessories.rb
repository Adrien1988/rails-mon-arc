class RenameArcAccessoriesToBowAcessories < ActiveRecord::Migration[6.1]
  def change
    rename_table :arc_accessories, :bow_accessories
  end
end
