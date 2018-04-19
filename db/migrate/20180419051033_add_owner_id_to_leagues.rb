class AddOwnerIdToLeagues < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :owner_id, :integer
  end
end
