class CreateKadais < ActiveRecord::Migration[5.1]
  def change
    create_table :kadais do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :due

      t.timestamps
    end
  end
end
