class Kadai < ActiveRecord::Migration[5.1]
  def change
    add_column :kadais, :user_id, :integer
  end
end
