class CreateDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :discounts do |t|
      t.string :name
      t.integer :movie_list_id
      t.float :price

      t.timestamps
    end
  end
end
