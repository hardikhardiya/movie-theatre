class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :movie_id
      t.string :hall
      t.string :seat
      t.timestamp :movie_time

      t.timestamps
    end
  end
end
