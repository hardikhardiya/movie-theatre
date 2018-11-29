class CreateHalls < ActiveRecord::Migration[5.1]
  def change
    create_table :halls do |t|
      t.string :hall_name
      t.integer :hall_seats

      t.timestamps
    end
  end
end
