class CreateQb < ActiveRecord::Migration[5.1]
  def change
    create_table :qbs do |t|
      t.string :key
      t.string :name
      t.string :team
    end
  end
end
