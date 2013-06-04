class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      redirect_to user_url(@user.id), notice: "Welcome back, #{@user.username.capitalize}"
    else
      redirect_to topics_url, notice: "Invalid Password or Username"
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "We'll miss you"
  end

end
