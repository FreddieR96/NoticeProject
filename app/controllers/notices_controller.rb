class NoticesController < ApplicationController
def create
	@notice = Notice.create(notice_params)
	respond_to do |f|
		if @notice.save
			f.html { redirect_back fallback_location: root_path }
			f.js
		else	
			f.html { render 'main/home' }
		end
	end
end



def show
	@thenotice = Notice.find(params[:id])
end

def destroy
	@notice = Notice.find(params[:id])
	@notice.destroy
	
	redirect_to backend_menu_path
end

private
	def notice_params
		params.require(:notice).permit(:title, :body, :notecategory, :descpic)
	end
end

