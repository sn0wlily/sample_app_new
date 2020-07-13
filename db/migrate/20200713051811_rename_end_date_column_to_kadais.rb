class RenameEndDateColumnToKadais < ActiveRecord::Migration[5.1]
  def change
    rename_column :kadais, :due, :due
  end
end
