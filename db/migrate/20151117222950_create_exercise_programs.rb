class CreateExercisePrograms < ActiveRecord::Migration
  def change
    create_table :exercise_programs do |t|
      t.integer :exercise_id, :program_id
    end
  end
end
