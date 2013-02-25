class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(user)
    trackers_url
  end
  
  def after_sign_out_path_for(user)
    pages_index_url
  end
  
end
