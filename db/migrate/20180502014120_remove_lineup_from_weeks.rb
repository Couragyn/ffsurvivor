class RemoveLineupFromWeeks < ActiveRecord::Migration[5.1]
  def change
  	remove_column :weeks, :lineup
  end
end
