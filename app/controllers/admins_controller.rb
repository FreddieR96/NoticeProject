class AdminsController < ApplicationController
  def login
	admin = Admin.where(username: params[:username])
	if admin && admin.authenticate(params[:password])
	session[:admin] = admin.id
	redirect_to admin_admin_path
	else
	redirect_to root_path
	end
  end
end
