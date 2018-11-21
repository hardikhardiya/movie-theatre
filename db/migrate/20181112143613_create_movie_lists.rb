class CreateMovieLists < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_lists do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
