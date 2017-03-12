class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @services = Service.where(user_id: @user.id )
  end
  
   def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to this website"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :street_name, :email, :password)
    end
end
