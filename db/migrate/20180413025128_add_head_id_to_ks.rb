class AddHeadIdToKs < ActiveRecord::Migration[5.1]
  def change
    add_column :ks, :head_id, :integer
  end
end
