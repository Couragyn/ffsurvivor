class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :limit
      t.integer :owner_id
      t.boolean :is_payed, :default => false

      t.timestamps
    end
  end
end
