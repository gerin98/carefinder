class ServicesController < ApplicationController
  def new
    @user = User.find(params[:id])
    @service = Service.new

  end

  def show

    @service = Service.find(params[:id])
    @user = User.find(@service.user_id)
    
    
  end
  
  def accept
    @user = User.find(params[:iduser])
    @service = Service.find(params[:idservice])
  end

  def index
    @user = User.find(params[:iduser])
    @services = Service.where("user_id != ?", @user.id)

  end
  
   def create
    @user = User.find(params[:id])
    @service = @user.services.build()
    @service.purpose = params[:purpose]
    @service.comment = params[:comment]
    @service.money = params[:money]
    if @service.save
      flash[:success] = "Service created"
      redirect_to @service
    else
      render 'new'
    end
  end

  private


end
