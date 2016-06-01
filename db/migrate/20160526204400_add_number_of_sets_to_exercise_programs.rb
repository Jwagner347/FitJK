class AddNumberOfSetsToExercisePrograms < ActiveRecord::Migration
  def change
    add_column :exercise_programs, :number_of_sets, :integer
  end
end
