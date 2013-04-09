class Admin::UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_only!
  
  def index
    @users = User.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user} has been deleted"
    redirect_to root_path
  end
  
end

