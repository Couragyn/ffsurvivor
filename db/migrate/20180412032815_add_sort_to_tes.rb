class AddSortToTes < ActiveRecord::Migration[5.1]
  def change
    add_column :tes, :sort, :integer
  end
end
