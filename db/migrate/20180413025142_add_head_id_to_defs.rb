class AddHeadIdToDefs < ActiveRecord::Migration[5.1]
  def change
    add_column :defs, :head_id, :integer
  end
end
