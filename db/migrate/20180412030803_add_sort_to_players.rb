class AddSortToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :sort, :integer
  end
end
