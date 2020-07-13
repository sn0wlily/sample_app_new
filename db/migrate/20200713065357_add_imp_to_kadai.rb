class AddImpToKadai < ActiveRecord::Migration[5.1]
  def change
    add_column :kadais, :imp, :integer
    add_column :kadais, :sinko, :integer
  end
end
