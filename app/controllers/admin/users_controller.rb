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
  end
  
end

