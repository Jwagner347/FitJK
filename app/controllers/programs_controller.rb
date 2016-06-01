class ProgramsController < ApplicationController
  before_action :set_program, only: [:edit, :update, :show]
  before_action :require_user
  before_action :require_same_user, only: [:edit, :update, :show]



  def new
    @program = Program.new
  end

  def create
  	@program = Program.new(program_params)
    @program.user = current_user

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
	end

	def index
  	@programs = current_user.programs
	end

	def edit
	end

	def update
  	if @program.update(program_params)
    	redirect_to program_path(@program)
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
  		params.require(:program).permit(:program_name, :description, day_of_week: [], exercise_ids: [])
		end

    def set_program
      @program = Program.find(params[:id])
    end

    def require_same_user
      if current_user != @program.user
        #TODO: if add admins, need to add !current_user.admin? conditional also
        flash[:danger] = "You can only view and edit your own programs"
        redirect_to programs_path
      end
    end

end
