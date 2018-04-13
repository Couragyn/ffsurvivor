class AddHeadIdToRbs < ActiveRecord::Migration[5.1]
  def change
    add_column :rbs, :head_id, :integer
  end
end
