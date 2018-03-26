class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
    	t.string :name
    	t.references :user, index: true, foreign_key: true
    	t.integer :current_lineup, array: true, default: []
    	t.float :total_score, default: 0
    end
  end
end
