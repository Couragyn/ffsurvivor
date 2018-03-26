class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
    	t.string :name
      t.integer :limit
     	t.references :user, index: true, foreign_key: true
      t.boolean :is_payed, :default => false
      t.boolean :is_private, :default => false
    	t.string :password

      t.timestamps
    end
  end
end
