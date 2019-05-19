class MainController < ApplicationController
before_action :setnewnotice, only: [:home]
before_action :setnotices, only: [:archive, :alltime]
def archive
end
def hotnotices
end
def search
end
def searchresults
if params.has_key?(:title) && params.has_key?(:notecategory) && !params[:notecategory].blank?
@searchresults = Notice.where("(title like ? OR title like ?) AND notecategory like ?", "%#{params[:title]}%", "%#{params[:title]}.strip%", "%#{params[:notecategory]}%")
elsif params.has_key?(:title) && params.has_key?(:notecategory) && params[:notecategory].blank?
@searchresults = Notice.where("title like ? OR title like ?", "%#{params[:title]}%", "%#{params[:title]}.strip%")
end
respond_to do |f|
	f.js
end
end
def alltime
respond_to do |f|
	f.json { render json: @allnotices }
end
end
def lastmonth
@monthnotices = Notice.where("created_at >= ?", Date.today - 1.month)
respond_to do |f|
	f.json { render json: @monthnotices }
end
end
def lastweek
@weeknotices = Notice.where("created_at >= ?", Date.today - 1.week)
respond_to do |f|
	f.json { render json: @weeknotices }

end
end 
def last3
@zestring = params[:zeform]
@zelength = params[:zeformlength]
respond_to do |f|
	f.js
end
end
private
def setnotices
@allnotices = Notice.all
end
def setnewnotice
@notice = Notice.new
end
end