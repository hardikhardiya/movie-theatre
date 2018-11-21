class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.timestamp :show_time
      t.string :show_hall
      t.integer :movie_list_id

      t.timestamps
    end
  end
end
