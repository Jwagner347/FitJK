module ProgramsHelper
  def show_sets(exercise, program)
    get_exercise_program_for_exercise(exercise, program).first.number_of_sets
  end

  def show_reps(exercise, program)
    get_exercise_program_for_exercise(exercise, program).first.number_of_reps
  end

  def get_exercise_program_for_exercise(exercise, program)
    exercise.exercise_programs.select { |ex| ex.program_id == program.id }
  end

end