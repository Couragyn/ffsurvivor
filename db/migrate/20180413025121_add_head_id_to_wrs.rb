class AddHeadIdToWrs < ActiveRecord::Migration[5.1]
  def change
    add_column :wrs, :head_id, :integer
  end
end
