class AddSortToQbs < ActiveRecord::Migration[5.1]
  def change
    add_column :qbs, :sort, :integer
  end
end
