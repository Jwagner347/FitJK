class AddDayOfWeekToPrograms < ActiveRecord::Migration
  def change
  	add_column :programs, :day_of_week, :integer
  end
end
