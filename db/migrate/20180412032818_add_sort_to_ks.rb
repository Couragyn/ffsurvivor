class AddSortToKs < ActiveRecord::Migration[5.1]
  def change
    add_column :ks, :sort, :integer
  end
end
