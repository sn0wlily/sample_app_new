class RenameTitleColumnToKadais < ActiveRecord::Migration[5.1]
  def change
    rename_column :kadais, :title, :name
  end
end
