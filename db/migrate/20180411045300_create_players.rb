class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :key
      t.string :name
      t.string :team
      t.string :position
      t.float :adp
      t.float :adpppr
      t.integer :bye

      t.timestamps
    end
  end
end
