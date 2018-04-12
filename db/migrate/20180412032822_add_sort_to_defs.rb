class AddSortToDefs < ActiveRecord::Migration[5.1]
  def change
    add_column :defs, :sort, :integer
  end
end
