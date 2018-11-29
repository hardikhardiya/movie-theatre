class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :credit_card, :integer, limit: 8
    add_column :users, :cvv, :integer
    add_column :users, :expiration, :string
    add_column :users, :address, :string
  end
end
