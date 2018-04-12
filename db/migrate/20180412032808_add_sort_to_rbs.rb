class AddSortToRbs < ActiveRecord::Migration[5.1]
  def change
    add_column :rbs, :sort, :integer
  end
end
