class AddClientIdToPhone < ActiveRecord::Migration[5.2]
  def change
  	add_column :phones, :client_id, :integer
  end
end
