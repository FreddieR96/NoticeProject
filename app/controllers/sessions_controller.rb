class SessionsController < ApplicationController
  def new
  end

  def create
	employee = Employee.where(username: params[:username])
	if employee && employee.authenticate(params[:password])
	session[:admin] = employee.id
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
