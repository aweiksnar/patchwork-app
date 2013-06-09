class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :require_signed_in_user
  helper_method :user_articles

  def user_articles
    @articles = Article.where(:user_id => session[:user_id])
  end

  def require_signed_in_user
    unless User.find_by_id(session[:user_id]).present?
      redirect_to :back, notice: "You must be logged in for that."
    end
  end
end








