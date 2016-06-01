class AddNumberOfRepsToExercisePrograms < ActiveRecord::Migration
  def change
    add_column :exercise_programs, :number_of_reps, :integer
  end
end
