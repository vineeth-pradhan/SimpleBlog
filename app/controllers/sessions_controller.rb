class SessionsController < ApplicationController
  
  def new
    @new_session = Session.new
  end


  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.password == params[:password]
      set_current_user(@user)
      flash[:notice] = "You have successfully logged in"
      redirect_to :controller => "menu", :action => "list"
    else
      flash[:alert] = "Invalid username or password"
      redirect_to new_session_path
    end

  end

  def destroy
    session[:user] = nil
    flash[:notice] = "You have successfully logged out"
    redirect_to new_session_path
  end
end
