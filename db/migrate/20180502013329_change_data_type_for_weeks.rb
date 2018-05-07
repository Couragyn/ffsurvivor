class ChangeDataTypeForWeeks < ActiveRecord::Migration[5.1]
  def change
  	change_column :weeks, :lineup, :string
  end
end
