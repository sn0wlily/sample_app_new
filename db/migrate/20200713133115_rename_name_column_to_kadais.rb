class RenameNameColumnToKadais < ActiveRecord::Migration[5.1]
  def change
    rename_column :kadais, :name, :title
  end
end
