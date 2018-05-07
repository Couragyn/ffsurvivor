class AddPlayerToWeeks < ActiveRecord::Migration[5.1]
  def change
  	add_column :weeks, :player, :string
  	add_column :weeks, :position, :string
  end
end
