class AddHeadIdToQbs < ActiveRecord::Migration[5.1]
  def change
    add_column :qbs, :head_id, :integer
  end
end
