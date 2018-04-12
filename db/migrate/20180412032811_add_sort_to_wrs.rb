class AddSortToWrs < ActiveRecord::Migration[5.1]
  def change
    add_column :wrs, :sort, :integer
  end
end
