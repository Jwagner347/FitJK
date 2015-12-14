class ProgramsController < ApplicationController

  def new
    @program = Program.new
  end

  def create
  	@program = Program.new(program_params)

		respond_to do |format|
      if @program.save
        format.html { redirect_to @program, notice: 'program was successfully created.' }
        format.json
      else
        format.html { render action: 'new' }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	@program = Program.find(params[:id])
    @exercises = @program.exercises
	end

	def index
  	@programs = Program.all
	end

	def edit
  	@program = Program.find(params[:id])
	end

	def update
  	@program = Program.find(params[:id])

  	if @program.update(program_params)
    	redirect_to @program
  	else
    	render 'edit'
  	end
	end

	def destroy
  	@program = Program.find(params[:id])
  	@program.destroy

  	redirect_to programs_path
	end

	private
		def program_params
  		params.require(:program).permit(:program_name, :description, exercise_ids: [])
		end

end
