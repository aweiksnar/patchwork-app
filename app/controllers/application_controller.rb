class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :require_signed_in_user

  def require_signed_in_user
    unless User.find_by_id(session[:user_id]).present?
      redirect_to :back, notice: "You must be logged in for that."
    end
  end

end
