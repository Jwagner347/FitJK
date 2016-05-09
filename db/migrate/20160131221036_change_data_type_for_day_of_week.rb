class ChangeDataTypeForDayOfWeek < ActiveRecord::Migration
  def change
  	change_column :programs, :day_of_week, :text
  end
end
