class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]
  before_action :require_same_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Your account has been created successfully"
      session[:user_id] = @user.id
      redirect_to programs_path
    else
      render 'new'
    end
  end

  def edit

  end


  def update
    if @user.update(user_params)
      flash[:success] = "Your profile has been updated successfully" #TODO why flash message not showing?
      redirect_to programs_path #TODO change to show user page
    else
      render 'edit'
    end
  end

  def show
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def require_same_user
      if current_user != @user
        flash[:danger] = "You can only edit your own profile"
        redirect_to root_path
      end
    end


end
