class AddOutToKadai < ActiveRecord::Migration[5.1]
  def change
    add_column :kadais, :out, :string
  end
end
