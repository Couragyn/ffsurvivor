class CreateTe < ActiveRecord::Migration[5.1]
  def change
    create_table :tes do |t|
      t.string :key
      t.string :name
      t.string :team
    end
  end
end
