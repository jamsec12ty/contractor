class UsersController < ApplicationController

  before_action :check_if_logged_in, except: [:new, :create]

  def new
    @user = User.new
  end #new

  def create
    @user = User.create user_params

    if @user.persisted?
      session[:user_id] = @user.id #log in the newly created account automatically!

      redirect_to dashboard_path
    else

      render :new

    end #else

  end #create

    def index
    end

    def show
      @user = User.find params[:id]

    end

    def edit
      @user = User.find params[:id]
    end

    def update
      @user = User.find params[:id] #from /users/:id

      @user.update user_params

      redirect_to user_path(@user)
    end

    def destroy
    end

    def dashboard
      @venues = Venue.all
    end


    ############################################
    private

  def user_params
    params.require(:user).permit( :name, :email, :password, :password_confirmation, :phone, :address, :driver_lic_no, :driver_lic_current, :emergency_contact_name, :emergency_contact_phone, :sec_lic_no, :sec_lic_exp, :rsa_no, :rsa_exp, :first_aid_exp)
  end # user_params

end # UsersController
