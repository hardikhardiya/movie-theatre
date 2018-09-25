class AddFieldsUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :fname, :string
  	add_column :users, :lname, :string
  	add_column :users, :age, :integer
  	add_column :users, :role, :string
  end
end
