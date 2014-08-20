class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.text :description

      t.timestamps
    end
  end
end
