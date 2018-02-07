class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
    	t.integer :number
    	t.references :team, index: true, foreign_key: true
    	t.integer :lineup, array: true, default: []
    	t.float :score
    end
  end
end
