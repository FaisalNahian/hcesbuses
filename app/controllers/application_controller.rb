class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(user)
    trackers_url
  end
  
  def after_sign_out_path_for(user)
    pages_index_url
  end
  
  def after_confirmation_path_for(user)
    trackers_url
  end

  def admin_only!
    unless current_user.is_admin?
      flash[:error] = "How about no."
      redirect_to root_path and return
    end
  end
end
