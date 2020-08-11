class UsersController < ApplicationController

  def new
    @user = User.new
  end #new

  def create
    @user = User.create user_params

    if @user.persisted?
      session[:user_id] = @user.id #log in the newly created account automatically!

      redirect_to root_path
    else

      render :new

    end #else

  end #create

    def index
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end


    private

  def user_params
    params.require(:user).permit( :name, :email, :password, :password_confirmation)
  end # user_params

end # UsersController
