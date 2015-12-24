	class ExercisesController < ApplicationController
		before_action :set_exercise, only: [:edit, :update, :show]


	def new
		@exercise = Exercise.new
	end

	def create
  	@exercise = Exercise.new(exercise_params)

		respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'exercise was successfully created.' }
        format.json
      else
        format.html { render action: 'new' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
	end

	def index
  	@exercises = Exercise.all
	end

	def edit
	end

	def update
  	if @exercise.update(exercise_params)
    	redirect_to @exercise
  	else
    	render 'edit'
  	end
	end

	def destroy
  	@exercise = Exercise.find(params[:id])
  	@exercise.destroy

  	redirect_to exercises_path
	end

	private
  		def exercise_params
    		params.require(:exercise).permit(:exercise_name, :description)
  		end

			def set_exercise
				@exercise = Exercise.find(params[:id])
			end

end
