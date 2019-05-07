class SessionsController < ApplicationController
  def new
  end

  def create
	admin = Admin.where(username: params[:username]).first
	if admin && admin.authenticate(params[:password])
	session[:admin] = admin.id
	redirect_to backend_menu_path
	else
	redirect_to backend_home_path
	end
  end

  def destroy
	session[:admin] = nil
	redirect_to root_path
  end
end
