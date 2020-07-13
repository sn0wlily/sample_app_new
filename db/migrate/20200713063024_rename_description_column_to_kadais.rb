class RenameDescriptionColumnToKadais < ActiveRecord::Migration[5.1]
  def change
    rename_column :kadais, :description, :etc
  end
end
