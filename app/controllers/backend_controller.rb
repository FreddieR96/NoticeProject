class BackendController < ApplicationController

before_action :logdin, only: [:menu]  
def home
  end

  def menu
	@theadmin = Admin.find(session[:admin].to_i)
	@notices = Notice.all
  end

private 

def logdin
	if session[:admin].present?
	return true
	else
	redirect_to backend_home_path
	end
end
end
