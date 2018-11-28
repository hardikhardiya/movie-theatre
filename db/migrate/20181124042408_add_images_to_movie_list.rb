class AddImagesToMovieList < ActiveRecord::Migration[5.1]
  def change
    add_column :movie_lists, :image, :string
  end
end
