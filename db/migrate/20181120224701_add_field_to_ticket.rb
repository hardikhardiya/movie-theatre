class AddFieldToTicket < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :show_id, :integer
  end
end
